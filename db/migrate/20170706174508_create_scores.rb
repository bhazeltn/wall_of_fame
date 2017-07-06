class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.belongs_to :event, foreign_key: true
      t.belongs_to :segment, foreign_key: true
      t.belongs_to :score_type, foreign_key: true
      t.integer :score
      t.string :skater1
      t.string :skater2
      t.string :skater3
      t.string :skater4
      t.string :team_name
      t.string :competition
      t.integer :year
      t.string :isubio

      t.timestamps
    end
  end
end
