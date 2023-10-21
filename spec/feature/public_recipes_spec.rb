require 'rails_helper'

RSpec.describe 'Public Recipes Page', type: :feature do
  before(:each) do
    @user1 = User.create(name: 'Binyam', id: 1, email: 'binyam@gmail.com', password: '123456789',
                         confirmed_at: Time.now)
  end
  describe "Can't see Foods Page if not logged In" do
    scenario 'Must show log in page navbar If not logged In' do
      visit public_recipes_path
      expect(page).to have_content('Log In')
      expect(page).to have_content('Join')
    end
  end

  describe 'GET /public_recipes' do
    scenario "Can see Foods page's content if signed in" do
      sign_in @user1
      visit public_recipes_path
      expect(page).to have_content('Public Recipes')
    end
  end
end
