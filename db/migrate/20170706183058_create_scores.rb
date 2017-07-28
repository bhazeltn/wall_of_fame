class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.belongs_to :event, foreign_key: true
      t.belongs_to :segment, foreign_key: true
      t.belongs_to :score_type, foreign_key: true
      t.belongs_to :competition, foreign_key: true
      t.float :score
      t.integer :skater1
      t.integer :skater2
      t.integer :skater3
      t.integer :skater4
      t.integer :team_name
      t.date :achieved
      t.integer :year


      t.timestamps
    end
  end
end
