class CreateExternalAwards < ActiveRecord::Migration[5.1]
  def change
    create_table :external_awards do |t|
      t.belongs_to :skater, foreign_key: true
      t.string :award
      t.string :web_site
      t.integer :year

      t.timestamps
    end
  end
end
