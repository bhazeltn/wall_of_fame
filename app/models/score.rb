class Score < ApplicationRecord
  belongs_to :event
  belongs_to :segment
  belongs_to :score_type
end
