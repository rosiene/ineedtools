class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :offer, index: true, foreign_key: true
      t.string :link

      t.timestamps null: false
    end
  end
end
