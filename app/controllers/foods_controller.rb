class FoodsController < ApplicationController
  def index
    @foods = Food.where(user: current_user)
  end

  def new
    params = session_params
    @food = params ? Food.new(params) : Food.new
    @food.user = current_user
  end

  def create
    @food = current_user.foods.build(food_params)

    if @food.save
      session.delete(:new_food) if session[:new_food]
      redirect_to foods_path, notice: "Food #{@food.name} was added succesfully!"
    else
      flash[:alert] = @food.errors.full_messages.first
      session[:new_food] = @food
      redirect_to new_food_path
    end
  end

  def destroy
    @food = Food.where(user: current_user).find(params[:id])
    redirect_to foods_path, notice: "Food #{@food.name} was deleted!" and return if @food.destroy

    redirect_to foods_path, alert: 'Something went wrong while trying to delete the Food'
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price, :quantity)
  end

  def session_params
    return false if session[:new_food].nil?

    session[:new_food].filter do |key|
      %w[name measurement_unit price quantity].include? key
    end
  end
end
