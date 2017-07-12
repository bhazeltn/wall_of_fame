class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.belongs_to :event, foreign_key: true
      t.belongs_to :segment, foreign_key: true
      t.belongs_to :score_type, foreign_key: true
      t.belongs_to :competition, foreign_key: true
      t.float :score
      t.string :skater1
      t.string :skater2
      t.string :skater3
      t.string :skater4
      t.string :team_name
      t.integer :year

      t.timestamps
    end
  end
end
