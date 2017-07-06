class ScoreType < ApplicationRecord
  has_many :SegmentScoreType
  has_many :segments, through: :SegmentScoreType
end
