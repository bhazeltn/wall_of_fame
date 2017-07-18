class Gofe < ApplicationRecord
  before_save :update_year
  belongs_to :level
  belongs_to :event
  belongs_to :segment
  
  private
  def update_year
    self.year = achieved.strftime("%Y")
  end
end
