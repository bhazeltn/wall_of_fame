class CreateElements < ActiveRecord::Migration[5.1]
  def change
    create_table :elements do |t|
      t.belongs_to :element_type, foreign_key: true
      t.string :abbrev
      t.string :description

      t.timestamps
    end
  end
end
