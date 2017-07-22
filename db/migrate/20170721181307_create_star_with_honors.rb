class CreateStarWithHonors < ActiveRecord::Migration[5.1]
  def change
    create_table :star_with_honors do |t|
      t.belongs_to :star_test, foreign_key: true
      t.belongs_to :skater, foreign_key: true
      t.date :achieved
      t.integer :year

      t.timestamps
    end
  end
end
