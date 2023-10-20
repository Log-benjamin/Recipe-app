class PublicRecipesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @public_recipes = Recipe.is_public.order(created_at: :desc)
  end
end
