class CreateStarTests < ActiveRecord::Migration[5.1]
  def change
    create_table :star_tests do |t|
      t.belongs_to :star_level, foreign_key: true
      t.string :name
      t.string :name_with_level

      t.timestamps
    end
  end
end
