class Gofe < ApplicationRecord
  include DateMethods
  include DisciplineMethods
  include TextMethods

  before_save :update_year
  before_save :update_discipline
  belongs_to :level
  belongs_to :event
  belongs_to :segment
  belongs_to :competition

  private
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
