class AddNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gamertag, :string
    add_column :users, :profile_picture, :string
    
    
  end
end
