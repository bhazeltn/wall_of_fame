class ScoreType < ApplicationRecord
  has_many :SegScoreType
  has_many :segments, through: :SegScoreType
end
