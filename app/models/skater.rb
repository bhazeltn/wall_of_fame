class Skater < ApplicationRecord
  has_many :star_gold
  has_many :score
  has_many :star_with_honor
  belongs_to :event
  belongs_to :level

  def name
    first_name + ' ' + last_name
  end
end
