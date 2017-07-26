class Score < ApplicationRecord
  before_save :update_year
  
  belongs_to :event
  belongs_to :segment
  belongs_to :score_type
  belongs_to :competition
  
  def name
    if skater4 != ""
      skater = "#{skater1}/#{skater2}/#{skater3}/#{skater4}"
    elsif skater3 != ""
      skater = "#{skater1}/#{skater2}/#{skater3}"
    elsif skater2 != ""
      skater = "#{skater1}/#{skater2}"
    else
      skater ="#{skater1}"
    end
  skater.split('/')
  end
  
  def team?
    self.event.name == "Team"
  end
  
  def couple?
    if self.event.name == "Pairs"
      true
    elsif self.event.name == "Dance"
      true
    elsif self.event.name == "Couples"
      true
    elsif self.team?
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
