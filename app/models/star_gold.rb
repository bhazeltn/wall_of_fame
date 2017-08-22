class StarGold < ApplicationRecord
  include DateMethods
  before_save :update_year
  belongs_to :star_level
  belongs_to :skater
  belongs_to :competition

end
