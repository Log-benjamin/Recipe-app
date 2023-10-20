require 'rails_helper'

RSpec.describe 'Recipe Index Page', type: :feature do
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
  describe "Can't see Recipe Page if not logged In" do
    scenario 'Must show log in page navbar If not logged In' do
      visit recipes_path
      expect(page).to have_content('Log In')
      expect(page).to have_content('Join')
    end

    scenario 'Must show sign up Btn and confirmation links If not logged In' do
      visit recipes_path
      expect(page).to have_content("Didn't receive confirmation instructions?")
      expect(page).to have_content('Sign up')
    end
  end

  describe 'GET /recipes' do
    scenario "Can see recipe page's content if signed in" do
      sign_in @user1
      visit recipes_path
      expect(page).to have_content('Recipe Page')
    end

    scenario 'Can see the user name in recipe page if signed in' do
      sign_in @user1
      visit recipes_path
      expect(page).to have_content(@user1.name)
      expect(page).to have_link('Add')
    end

    scenario 'Can see nav bar pages in recipe page if signed in' do
      sign_in @user2
      visit recipes_path
      expect(page).to have_content('Food')
      expect(page).to have_content('Recipes')
      expect(page).to have_content('Public Recipes')
      expect(page).to have_content('Log out')
    end

    scenario "can see each recipe's name." do
      sign_in @user2
      visit recipes_path
      expect(page).to have_content('Chiken Noodle')
    end

    scenario "can see each recipe's description." do
      sign_in @user1
      visit recipes_path
      expect(page).to have_content('French toast is a dish of sliced bread soaked in beaten eggs')
    end

    scenario 'can see REMOVE button on each row' do
      sign_in @user1
      visit recipes_path
      expect(page).to have_button('Remove')
    end
  end

  describe 'GET recipe/id' do
    scenario "redirects on recipe/id when clicked on recipe's name" do
      sign_in @user1
      visit recipes_path
      recipe = @recipes.first
      click_link(recipe.name)
      expect(page).to have_current_path(recipe_path(recipe.id))
    end
  end
end
