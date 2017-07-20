class CreateLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :levels do |t|
      t.string :name
      t.string :html_name
      t.belongs_to :group, foreign_key: true

      t.timestamps
    end
  end
end
