class AddConstraintsToRecipeFoods < ActiveRecord::Migration[7.1]
  def change
    change_column :recipe_foods, :quantity, :decimal, null: false, precision: 5, scale: 2, default: 0
  end
end
