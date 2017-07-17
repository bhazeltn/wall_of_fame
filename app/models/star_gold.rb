class StarGold < ApplicationRecord
  belongs_to :star_level
  belongs_to :skater
  belongs_to :competition
end
