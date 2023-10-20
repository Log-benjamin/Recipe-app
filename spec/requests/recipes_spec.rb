require 'rails_helper'

RSpec.describe "'Recipes' - [Controller]", :requests, type: :request do
  let!(:user) { User.create(name: 'test', email: 'test@me.com', password: 'test1234', confirmed_at: Time.now) }

  describe "'GET /recipes' => 'index' action at 'recipes' controller", :index do
    describe "* 'status" do
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
  end
end
