class CreateLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :levels do |t|
      t.belongs_to :group, foreign_key: true

      t.timestamps
    end
  end
end
