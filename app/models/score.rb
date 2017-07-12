class Score < ApplicationRecord
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

  def isteam
    if team_name == ""
      team = false
    elsif team_name
      team = true
    else
      team = false
    end
    team
  end
  
end
