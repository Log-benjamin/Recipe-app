class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_ability

  def set_ability
    @ability = Ability.new(current_user)
  end

  def index
    @recipes = Recipe.where(user: current_user)
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    if @recipe.save
      redirect_to recipes_path, notice: 'Recipe was successfully created.'
    else
      render 'new'
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.toggle(:public)
    if @recipe.save
      flash[:notice] = update_recipe_notice
      redirect_to recipe_path(@recipe)
    else
      redirect_to recipe_path(@recipe), alert: @recipe.errors.full_messages.first
    end
  end

  def show
    @recipe = Recipe.includes(recipe_foods: [:food]).find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def destroy
    Recipe.find(params[:id]).destroy
    redirect_to recipes_path
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipe_path(@recipe), notice: 'Recipe Food was successfully destroyed.'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :preparation_time, :cooking_time)
  end

  def update_recipe_notice
    "Recipe was succesfully #{@recipe.public? ? 'added to' : 'removed from'} the 'Public Recipes List'"
  end
end
