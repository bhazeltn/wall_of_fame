class StarWithHonor < ApplicationRecord
  before_save :update_year
  belongs_to :star_test
  belongs_to :skater
  
  private
  def update_year
    self.year = achieved.strftime("%Y")
  end
  
end
