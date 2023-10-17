class AddConstraintsToRecipes < ActiveRecord::Migration[7.1]
  def change
    change_column :recipes, :name, :string, null: false, limit: 150
    change_column :recipes, :preparation_time, :time, null: false, default: '00:00:00'
    change_column :recipes, :cooking_time, :time, null: false, default: '00:00:00'
    change_column :recipes, :description, :text, null: false
    change_column :recipes, :public, :boolean, null: false, default: false
  end
end
