class Level < ApplicationRecord
  belongs_to :group
  has_many :event
  has_many :score, through: :event
end
