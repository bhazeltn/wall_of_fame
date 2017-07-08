class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :html_name
      t.belongs_to :level, foreign_key: true

      t.timestamps
    end
  end
end
