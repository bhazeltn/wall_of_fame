class Score < ApplicationRecord
  include DateMethods
  include DisciplineMethods
  before_save :update_year
  belongs_to :event
  belongs_to :segment
  belongs_to :score_type
  belongs_to :competition

  def name
    skater = ""
    skater = "#{Skater.find(skater1).name}" if skater1
    skater = skater + "/#{Skater.find(skater2).name}" if skater2
    skater = skater + "/#{Skater.find(skater3).name}" if skater3
    skater = skater + "/#{Skater.find(skater4).name}" if skater4
  skater.split('/')
  end

  def bronze?
    Date.today - 6.months < self.achieved
  end

  def silver?
    Date.today - 2.years  < self.achieved
  end

  def gold?
    Date.today - 5.years  < self.achieved
  end

  def score?
    self.score > 0
  end

  def level
    self.event.level
  end
end
