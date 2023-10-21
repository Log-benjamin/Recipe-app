require 'rails_helper'

RSpec.describe 'Foods Page', type: :feature do
  before(:each) do
    @user1 = User.create(name: 'Binyam', id: 1, email: 'binyam@gmail.com', password: '123456789',
                         confirmed_at: Time.now)
    @user2 = User.create(name: 'Luis', id: 2, email: 'Luis@gmail.com', password: '987654321',
                         confirmed_at: Time.now)

    @foods = [
      Food.create(id: 1, user_id: @user1.id, name: 'Apple', measurement_unit: 'gram', quantity: 5, price: 10),
      Food.create(id: 2, user_id: @user2.id, name: 'Pineapple', measurement_unit: 'kg', quantity: 1, price: 5),
      Food.create(id: 3, user_id: @user1.id, name: 'Chicken breast', measurement_unit: 'unit', quantity: 3,
                  price: 7)
    ]
  end
  describe "Can't see Foods Page if not logged In" do
    scenario 'Must show log in page navbar If not logged In' do
      visit foods_path
      expect(page).to have_content('Log In')
      expect(page).to have_content('Join')
    end

    scenario 'Must show sign up Btn and confirmation links If not logged In' do
      visit foods_path
      expect(page).to have_content("Didn't receive confirmation instructions?")
      expect(page).to have_content('Sign up')
    end
  end

  describe 'GET /foods' do
    scenario "Can see Foods page's content if signed in" do
      sign_in @user1
      visit foods_path
      expect(page).to have_content('Food List')
    end

    scenario 'Can see the user name in Foods page if signed in' do
      sign_in @user1
      visit foods_path
      expect(page).to have_content(@user1.name)
      expect(page).to have_link('Add Food')
    end

    scenario 'Can see nav bar pages in Foods page if signed in' do
      sign_in @user2
      visit foods_path
      expect(page).to have_content('Food')
      expect(page).to have_content('Recipes')
      expect(page).to have_content('Public Recipes')
      expect(page).to have_content('Log out')
    end

    scenario 'can see Add Foods page' do
      sign_in @user2
      visit '/foods/new'
      expect(page).to have_content('Add New Food')
      expect(page).to have_content('Measurement unit')
      expect(page).to have_content('Quantity')
      expect(page).to have_button('Add Food')
    end

    scenario 'Must have add food Btn  Add Foods page' do
      sign_in @user1
      visit '/foods/new'
      expect(page).to have_button('Add Food')
    end
  end

  describe 'GET foods/id' do
    scenario 'redirects on foods/new when clicked on Add Foods Btn link' do
      sign_in @user1
      visit foods_path
      @foods.first
      click_link('Add Food')
      expect(page).to have_current_path('/foods/new')
    end
  end
end
