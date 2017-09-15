class Skater < ApplicationRecord
  has_many :star_gold
  has_many :score
  has_many :star_with_honor
  belongs_to :event
  belongs_to :level
  before_save :fullname
  before_validation :current_level


  def fullname
    self.name = self.first_name + ' ' + self.last_name
  end

  def current_level
    unless self.level_id
      self.level_id = 27
    end
    unless self.event_id
      self.event_id = 94
    end
  end

end
