class AddConstraintsToFoods < ActiveRecord::Migration[7.1]
  def change
    change_column :foods, :name, :string, null: false, limit: 65
    change_column :foods, :measurement_unit, :string, null: false, limit: 30
    change_column :foods, :price, :decimal, null: false, precision: 7, scale: 2, default: 0
    change_column :foods, :quantity, :decimal, null: false, precision: 5, scale: 2, default: 0
  end
end
