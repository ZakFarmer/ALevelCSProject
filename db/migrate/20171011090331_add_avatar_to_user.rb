class AddAvatarToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :avatar, :string # Add "username" column to table "users"
    add_index :users, :avatar, unique: true
  end
end
