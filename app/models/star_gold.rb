class StarGold < ApplicationRecord
  before_save :update_year
  
  belongs_to :star_level
  belongs_to :skater
  belongs_to :competition

  private
  def update_year
    self.year = achieved.strftime("%Y")
  end

end
