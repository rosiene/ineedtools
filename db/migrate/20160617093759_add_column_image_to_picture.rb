class AddColumnImageToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :image, :string
    remove_column :pictures, :link
  end
end
