class CreateClubAwards < ActiveRecord::Migration[5.1]
  def change
    create_table :club_awards do |t|
      t.belongs_to :skater, foreign_key: true
      t.belongs_to :award, foreign_key: true
      t.integer :year

      t.timestamps
    end
  end
end
