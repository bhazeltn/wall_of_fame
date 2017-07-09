class Event < ApplicationRecord
  belongs_to :level
  has_many :SegmentEvent
  has_many :segment, through: :SegmentEvent
  has_many :score_type, through: :segment
  has_many :score
end
