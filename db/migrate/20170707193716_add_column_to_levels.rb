class AddColumnToLevels < ActiveRecord::Migration[5.1]
  def change
    add_column :levels, :level, :string
  end
end
