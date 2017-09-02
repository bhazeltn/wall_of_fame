class StarWithHonor < ApplicationRecord
  include DateMethods

  before_save :update_yr
  belongs_to :star_test
  belongs_to :skater

  private
  def update_yr
    yr = self.achieved.year
    self.year = yr
  end

end