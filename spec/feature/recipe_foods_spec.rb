require 'rails_helper'

RSpec.describe 'Recipe_foods Page', type: :feature do
  before(:each) do
    @user2 = User.create(name: 'Luis', id: 2, email: 'Luis@gmail.com', password: '987654321',
                         confirmed_at: Time.now)

    @foods = [
      Food.create(id: 1, user_id: @user2.id, name: 'Apple', measurement_unit: 'gram', quantity: 5, price: 10),
      Food.create(id: 2, user_id: @user2.id, name: 'Pineapple', measurement_unit: 'kg', quantity: 1, price: 5),
      Food.create(id: 3, user_id: @user2.id, name: 'Chicken breast', measurement_unit: 'unit', quantity: 3,
                  price: 7)
    ]
  end

  describe 'GET /recipe_foods/' do
    scenario "Can see recipe_foods page's content" do
      sign_in @user2
      visit '/recipe_foods/new?recipe_id=1'
      expect(page).to have_content('Create Recipe Food')
    end

    scenario 'Can see nav bar pages in recipe page if signed in' do
      sign_in @user2
      visit '/recipe_foods/new?recipe_id=2'
      expect(page).to have_content('Public Recipes')
      expect(page).to have_content('Log out')
    end
  end
end
