class AddUserRefToRecipe < ActiveRecord::Migration[7.1]
  def change
    add_reference(:recipes, :user, null: false, index: true, foreign_key: true)
  end
end
