class AddColumnToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :html_name, :string
  end
end
