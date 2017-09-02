class AddLevelToSkater < ActiveRecord::Migration[5.1]
  def change
    add_reference :skaters, :level, foreign_key: true, optional: true
  end
end
