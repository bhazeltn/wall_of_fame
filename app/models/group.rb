class Group < ApplicationRecord
  has_many :event
  has_many :level
end
