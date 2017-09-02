class Group < ApplicationRecord
  has_many :level
  has_many :event, through: :level
  has_many :score, through: :event
  has_many :skater
end
