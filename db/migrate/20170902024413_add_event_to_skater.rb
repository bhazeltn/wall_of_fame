class AddEventToSkater < ActiveRecord::Migration[5.1]
  def change
    add_reference :skaters, :event, foreign_key: true
  end
end
