class CreateAwards < ActiveRecord::Migration[5.1]
  def change
    create_table :awards do |t|
      t.belongs_to :award_type
      t.string :name

      t.timestamps
    end
  end
end
