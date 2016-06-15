class AddColumnsToUser < ActiveRecord::Migration
  def change 
    add_column :users, :zipcode, :string
    add_column :users, :avatar, :string
    add_column :users, :phone, :string
  end
end
