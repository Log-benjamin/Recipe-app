require 'rails_helper'

RSpec.describe "'Public Recipes' - [Controller]", :requests, type: :request do
  let!(:user) { User.create(name: 'test', email: 'test@me.com', password: 'test1234', confirmed_at: Time.now) }

  describe "'GET /public_recipes' => 'index' action at 'public recipes' controller", :index do
    before do
      Recipe.create(user:, name: 'Test recipe 1', description: 'Test description recipe 1', preparation_time: 1,
                    cooking_time: 1.5, public: true)
      Recipe.create(user:, name: 'Test recipe 2', description: 'Test description recipe 2', preparation_time: 2,
                    cooking_time: 2.5)
      Recipe.create(user:, name: 'Test recipe 3', description: 'Test description recipe 3', preparation_time: 3,
                    cooking_time: 3.5, public: true)
      Recipe.create(user:, name: 'Test recipe 4', description: 'Test description recipe 4', preparation_time: 4,
                    cooking_time: 4.5)
      get public_recipes_path
    end

    context "* 'status'" do
      it '- returns http success/ok' do
        expect(response).to have_http_status(:success)
        expect(response).to have_http_status(:ok)
      end
    end

    context "* 'template'", :template do
      it "- renders 'index' template" do
        expect(response).to render_template(:index)
        expect(response).to render_template('index')
      end

      it "- renders public_recipes/index' template" do
        expect(response).to render_template('public_recipes/index')
      end
    end

    context "* 'displayed content'", :content do
      it "- 'body' includes 'Public Recipes'" do
        expect(response.body).to match(/Public Recipes/)
      end
    end
  end
end
