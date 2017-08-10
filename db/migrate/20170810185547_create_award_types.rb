class CreateAwardTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :award_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
