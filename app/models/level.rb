class Level < ApplicationRecord
  belongs_to :group
  has_many :event
end
