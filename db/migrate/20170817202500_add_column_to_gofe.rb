class AddColumnToGofe < ActiveRecord::Migration[5.1]
  def change
    add_column :goves, :discipline, :string
    Gofe.find_each do |g|
      g.save!
    end
  end
end
