class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_name, :string
    add_column :users, :tagline, :string
    add_column :users, :biography, :string
    add_column :users, :account_type, :string
  end
end
