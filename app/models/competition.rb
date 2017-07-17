class Competition < ApplicationRecord
  has_many :score
  has_many :star_gold
end
