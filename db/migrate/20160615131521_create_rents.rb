class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.references :user, index: true, foreign_key: true
      t.references :offer, index: true, foreign_key: true
      t.date :initial_date
      t.date :final_date

      t.timestamps null: false
    end
  end
end
