class StarWithHonor < ApplicationRecord
  include DateMethods
  
  before_save :update_year
  belongs_to :star_test
  belongs_to :skater
  
end