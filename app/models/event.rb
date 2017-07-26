class Event < ApplicationRecord
  belongs_to :level
  has_many :SegmentEvent
  has_many :segment, through: :SegmentEvent
  has_many :score_type, through: :segment
  has_many :score
  
  def team?
    self.name == "Team"
  end
  
  def couple?
    if self.name == "Pairs"
      true
    elsif self.name == "Dance"
      true
    elsif self.name == "Couples"
      true
    elsif self.team?
      true
    else
      false
    end
  end
  
end
