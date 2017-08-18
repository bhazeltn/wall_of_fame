class Gofe < ApplicationRecord
  before_save :update_year
  before_save :update_discipline
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
  
  def triathalon?
    self.group.name == "Triathalon"
  end
  
  def team?
    self.group == "STAR Team"
  end
  
  private
  def update_year
    self.year = achieved.strftime("%Y")
  end
  
  def update_discipline
    if self.interpretive?
      self.discipline = "Interpretive"
    elsif self.dance?
      self.discipline = "Dance"
    elsif self.pairs?
      self.discipline = "Pairs"
    elsif self.triathalon?
      self.discipline = "Triathalon"
    elsif self.team?
      self.discipline = "Team"
    elsif self.adult?
      self.discipline = "AdultSkate"
    else
      self.discipline = "Freeskate"
    end
  end

end
