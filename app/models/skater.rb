class Skater < ApplicationRecord
  has_many :star_gold
  has_many :score
  has_many :star_with_honor
  
  def name
    first_name + ' ' + last_name
  end
end
