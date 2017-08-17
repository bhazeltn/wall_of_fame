class Gofe < ApplicationRecord
  before_save :update_year
  belongs_to :level
  belongs_to :event
  belongs_to :segment
  belongs_to :competition
  
  def couple?
    if self.pairs?
      true
    elsif self.dance?
      true
    elsif self.couples?
      true
    else
      false
    end
  end
  
  def group
    self.level.group
  end
  
  def freeskate?
    if couple? or adult? or interpretive? or team?
      false
    else
      true
    end
  end
  
  def interpretive?
    self.group.name == "Interpretive"
  end
  
  def dance?
    self.event.name == "Dance"
  end
  
  def pairs?
    self.event.name == "Pairs"
  end
  
  def couples?
    self.event.name == "Couples"
  end
  
  def adult?
    self.group.name == "AdultSkate"
  end
  
  def team?
    self.group == "STAR Team"
  end
  private
  def update_year
    self.year = achieved.strftime("%Y")
  end
end
