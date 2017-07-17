class Skater < ApplicationRecord
  has_many :star_gold
  has_many :score
  
  def name
    first_name + ' ' + last_name
  end
end
