class Segment < ApplicationRecord
  has_many :SegScoreType
  has_many :score_type, through: :SegScoreType
  has_many :SegmentEvent
  has_many :event, through: :SegmentEvent
end
