class StarWithHonor < ApplicationRecord
  before_save :update_year
  belongs_to :star_test
  belongs_to :skater
  
  # def test_level
    
  #   star_test.star_level.level + " " + star_test.name
    
  # end
  
  private
  def update_year
    self.year = achieved.strftime("%Y")
  end
  
end
