class StarLevel < ApplicationRecord
  has_many :star_gold
  has_many :star_test
  has_many :star_with_honor, through: :star_test
end
