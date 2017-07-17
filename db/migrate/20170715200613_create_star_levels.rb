class CreateStarLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :star_levels do |t|
      t.string :level

      t.timestamps
    end
  end
end
