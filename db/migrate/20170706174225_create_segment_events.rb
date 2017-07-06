class CreateSegmentEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :segment_events do |t|
      t.belongs_to :segment, foreign_key: true
      t.belongs_to :event, foreign_key: true

      t.timestamps
    end
  end
end
