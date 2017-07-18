class CreateGoves < ActiveRecord::Migration[5.1]
  def change
    create_table :goves do |t|
      t.belongs_to :level, foreign_key: true
      t.belongs_to :event, foreign_key: true
      t.belongs_to :segment, foreign_key: true
      t.integer :year
      t.string :competition
      t.string :skater1
      t.string :skater2
      t.string :element
      t.integer :grade
      t.date :achieved

      t.timestamps
    end
  end
end
