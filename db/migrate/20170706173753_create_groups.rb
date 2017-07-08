class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :group_name
      t.string :html_name

      t.timestamps
    end
  end
end
