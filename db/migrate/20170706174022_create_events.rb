class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.belongs_to :group, foreign_key: true

      t.timestamps
    end
  end
end
