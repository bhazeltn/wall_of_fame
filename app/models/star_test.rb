class StarTest < ApplicationRecord
  before_save :add_star_to_level
  belongs_to :star_level
  has_many :star_with_honor
  def add_star_to_level
    self.name_with_level = self.star_level.level + " " + self.name
  end
  
end
