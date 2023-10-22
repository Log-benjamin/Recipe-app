class AddConstraintsToUsers < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :name, :string, null: false, limit: 65
  end
end
