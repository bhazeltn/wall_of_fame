class Score < ApplicationRecord
  include DateMethods
  include DisciplineMethods

  before_save :update_year
  belongs_to :event
  belongs_to :segment
  belongs_to :score_type
  belongs_to :competition


  def name
    if skater4 != nil
      skater = "#{Skater.find(skater1).name}/#{Skater.find(skater2).name}/#{Skater.find(skater3).name}/#{Skater.find(skater4).name}"
    elsif skater3!= nil
      skater = "#{Skater.find(skater1).name}/#{Skater.find(skater2).name}/#{Skater.find(skater3).name}"
    elsif skater2 != nil
      skater = "#{Skater.find(skater1).name}/#{Skater.find(skater2).name}"
    elsif skater1 != nil
      skater ="#{Skater.find(skater1).name}"
    else
      skater =""
    end
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

end
