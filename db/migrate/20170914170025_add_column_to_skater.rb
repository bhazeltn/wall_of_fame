class AddColumnToSkater < ActiveRecord::Migration[5.1]
  def change
    add_column :skaters, :name, :string
    Skater.find_each do |s|
      s.save!
    end
  end
end
