class CreateSegScoreTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :seg_score_types do |t|
      t.belongs_to :segment, foreign_key: true
      t.belongs_to :score_type, foreign_key: true

      t.timestamps
    end
  end
end
