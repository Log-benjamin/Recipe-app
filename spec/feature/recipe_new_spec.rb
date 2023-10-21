require 'rails_helper'

RSpec.describe 'Recipe new Page', type: :feature do
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
        id: 7, user_id: @user2.id,
        preparation_time: 1,
        cooking_time: 2.75,
        description: 'Chicken noodle is a soup made from chicken',
        public: true
      )
    ]
  end

  describe 'GET /recipes/new' do
    scenario "Can see new recipes add page's content" do
      sign_in @user1
      visit '/recipes/new'
      expect(page).to have_content('Add New Recipe')
    end

    scenario "Can see new recipes add page's content" do
      sign_in @user1
      visit '/recipes/new'
      expect(page).to have_button('Add Recipe')
    end
  end
end
