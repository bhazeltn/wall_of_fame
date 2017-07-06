class CreateScoreTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :score_types do |t|
      t.string :score_type

      t.timestamps
    end
  end
end
