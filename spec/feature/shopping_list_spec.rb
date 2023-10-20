require 'rails_helper'

RSpec.describe 'Shopping List Page', type: :feature do
  before(:each) do
    @user1 = User.create(name: 'Binyam', id: 1, email: 'binyam@gmail.com', password: '123456789',
                         confirmed_at: Time.now)
    @user2 = User.create(name: 'Luis', id: 2, email: 'Luis@gmail.com', password: '987654321',
                         confirmed_at: Time.now)

    @recipes = [
      Recipe.create(
        name: 'French Toast',
        id: 1,
        user_id: @user1.id,
        preparation_time: 1.5,
        cooking_time: 3,
        description: 'French toast is a dish of sliced bread soaked in beaten eggs',
        public: false
      ),
      Recipe.create(
        name: 'Chiken Noodle',
        id: 7,
        user_id: @user2.id,
        preparation_time: 1,
        cooking_time: 2.75,
        description: 'Chicken noodle is a soup made from chicken',
        public: true
      )
    ]
  end
  describe "Can't see Shopping List Page if not logged In" do
    scenario 'Must show log in page navbar If not logged In' do
      visit '/shopping_lists?recipe_id=1'
      expect(page).to have_content('Log In')
      expect(page).to have_content('Join')
    end
  end

  describe 'GET /shopping_lists' do
    scenario "Can see Shopping List page's content if signed in" do
      sign_in @user2
      visit '/shopping_lists?recipe_id=7'
      expect(page).to have_content('Shopping List')
    end

    scenario 'Can see nav bar pages in Shopping List page if signed in' do
      sign_in @user1
      visit '/shopping_lists?recipe_id=7'
      expect(page).to have_content('Food')
      expect(page).to have_content('Public Recipes')
      expect(page).to have_content('Log out')
    end

    scenario 'Can See content in Shopping List page' do
      sign_in @user1
      visit '/shopping_lists?recipe_id=1'
      expect(page).to have_content('Amount of food items to buy')
      expect(page).to have_content('Total value of food needed')
    end

    scenario 'Can See cShopping Item table Shopping List page' do
      sign_in @user2
      visit '/shopping_lists?recipe_id=1'
      expect(page).to have_content('$')
      expect(page).to have_content('Food')
      expect(page).to have_content('Quantity')
      expect(page).to have_content('Value')
    end
  end
end
