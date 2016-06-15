class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.float :price
      t.references :category, index: true, foreign_key: true
      t.boolean :status

      t.timestamps null: false
    end
  end
end
