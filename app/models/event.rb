class Event < ApplicationRecord
  belongs_to :group
  has_many :SegmentEvent
  has_many :segment, through: :SegmentEvent
end
