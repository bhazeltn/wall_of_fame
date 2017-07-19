class Gofe < ApplicationRecord
  before_save :update_year
  belongs_to :level
  belongs_to :event
  belongs_to :segment
  belongs_to :competition
  
  private
  def update_year
    self.year = achieved.strftime("%Y")
  end
end
