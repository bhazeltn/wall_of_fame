class CreateGoldTests < ActiveRecord::Migration[5.1]
  def change
    create_table :gold_tests do |t|
      t.belongs_to :skater, foreign_key: true
      t.string :testLevel
      t.integer :year

      t.timestamps
    end
  end
end
