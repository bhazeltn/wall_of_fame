class CreateSegments < ActiveRecord::Migration[5.1]
  def change
    create_table :segments do |t|
      t.string :segment_type

      t.timestamps
    end
  end
end
