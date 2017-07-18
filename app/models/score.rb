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

  private
  def update_year
    self.year = achieved.strftime("%Y")
  end

end
