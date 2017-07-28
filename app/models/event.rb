class Event < ApplicationRecord
  belongs_to :level
  has_many :SegmentEvent
  has_many :segment, through: :SegmentEvent
  has_many :score_type, through: :segment
  has_many :score
  
  def team?
    self.name == "Team"
  end
  
  def pairs?
    self.name == "Pairs"
  end
  
  def dance?
    self.name == "Dance"
  end
  
  def couples?
    self.name == "Couples"
  end
  
  def two_skaters?
    if self.pairs?
      true
    elsif self.dance?
      true
    elsif self.couples?
      true
    elsif self.team?
      true
    else
      false
    end
  end
end
