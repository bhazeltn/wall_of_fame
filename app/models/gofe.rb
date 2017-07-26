class Gofe < ApplicationRecord
  before_save :update_year
  belongs_to :level
  belongs_to :event
  belongs_to :segment
  belongs_to :competition
  
  def couple?
    if self.event.name == "Pairs"
      true
    elsif self.event.name == "Dance"
      true
    elsif self.event.name == "Couples"
      true
    else
      false
    end
  end
  
  
  private
  def update_year
    self.year = achieved.strftime("%Y")
  end
end
