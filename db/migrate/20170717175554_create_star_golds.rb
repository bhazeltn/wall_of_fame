class CreateStarGolds < ActiveRecord::Migration[5.1]
  def change
    create_table :star_golds do |t|
      t.belongs_to :star_level, foreign_key: true
      t.belongs_to :skater, foreign_key: true
      t.belongs_to :competition, foreign_key: true
      t.string :element
      t.date  :achieved
      t.integer :year

      t.timestamps
    end
  end
end
