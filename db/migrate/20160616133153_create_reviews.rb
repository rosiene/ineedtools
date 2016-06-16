class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :eval
      t.text :comment
      t.references :rent, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
