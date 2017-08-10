class CreateAbTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :ab_teams do |t|
      t.belongs_to :skater, foreign_key: true
      t.belongs_to :team, foreign_key: true
      t.integer :year

      t.timestamps
    end
  end
end
