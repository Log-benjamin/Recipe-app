class AddFoodRefToRecipeFoods < ActiveRecord::Migration[7.1]
  def change
    add_reference(:recipe_foods, :food, null: false, index: true, foreign_key: true)
  end
end
