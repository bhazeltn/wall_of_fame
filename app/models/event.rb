class Event < ApplicationRecord
  belongs_to :level
  has_many :SegmentEvent
  has_many :segment, through: :SegmentEvent
end
