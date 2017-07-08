class Group < ApplicationRecord
  has_many :level
  has_many :event, through: :level
end
