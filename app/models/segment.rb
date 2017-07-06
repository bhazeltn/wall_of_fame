class Segment < ApplicationRecord
  has_many :SegmentScoreType
  has_many :score_type, through: :SegmentScoreType
  has_many :SegmentEvent
  has_many :event, through: :SegmentEvent
end
