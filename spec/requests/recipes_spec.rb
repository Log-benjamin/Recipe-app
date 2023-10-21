require 'rails_helper'

RSpec.describe "'Recipes' - [Controller]", :requests, type: :request do
  let!(:user) { User.create(name: 'test', email: 'test@me.com', password: 'test1234', confirmed_at: Time.now) }
  let!(:recipe) { Recipe.create(user:, name: 'Test recipe', description: 'Test description recipe', preparation_time: 1, cooking_time: 1.5) }

  describe "'GET /recipes' => 'index' action at 'recipes' controller", :index do
    describe "* 'status'" do
      context "- if no user is 'logged in'", :status do
        it '- returns http found' do
          get recipes_path
          expect(response).to have_http_status(:found)
        end
      end

      context "- when a user is 'logged in'", :status do
        it '- returns http success' do
          sign_in user
          get recipes_path
          expect(response).to have_http_status(:success)
        end
      end
    end

    describe "* 'template'", :template do
      before do
        sign_in user
        get recipes_path
      end

      it "- renders 'index' template" do
        expect(response).to render_template(:index)
        expect(response).to render_template('index')
      end

      it "- renders recipes/index' template" do
        expect(response).to render_template('recipes/index')
      end
    end

    describe "* 'displayed content'", :content do
      before do
        sign_in user
        get recipes_path
      end

      it "- 'body' includes 'Recipe page'" do
        expect(response.body).to match(/Recipe Page/)
      end
    end
  end

  describe "'GET /show' => 'show' action at 'recipes' controller", :show do
    before do
      sign_in user
      user.recipes.create(name: 'Test recipe', description: 'Test description recipe', preparation_time: 1, cooking_time: 1.5)
      get recipe_path(user.recipes.last)
    end

    context "* 'status'", :status do
      it '- returns http success/ok' do
        expect(response).to have_http_status(:success)
        expect(response).to have_http_status(:ok)
      end
    end

    context "* 'template'", :template do
      it "- renders 'show' template" do
        expect(response).to render_template(:show)
        expect(response).to render_template('show')
      end

      it "- renders 'recipes/show' template" do
        expect(response).to render_template('recipes/show')
      end
    end

    context "* 'displayed content'", :template do
      it "- 'body' includes 'Recipe info'" do
        expect(response.body).to match(user.recipes.last.name)
      end
    end
  end

  describe "'GET /update' => 'update' action at 'recipes' controller", :show do
    before do
      sign_in user
      user.recipes.create(name: 'Test recipe', description: 'Test description recipe', preparation_time: 1, cooking_time: 1.5)
      patch update_recipe_path(user.recipes.last)
    end

    context "* 'status'", :status do
      it '- returns http see_other' do
        expect(response).to have_http_status(:see_other)
      end
    end

    context "* 'redirects to'", :status do
      it "- 'GET /show'" do
        expect(response).to redirect_to(recipe_path(user.recipes.last))
      end
    end

    context "* 'displayed content'", :template do
      it "- the 'Recipe info' is showed" do
        expect(response.location).to match(recipe_path(user.recipes.last))
      end
    end
  end
end
