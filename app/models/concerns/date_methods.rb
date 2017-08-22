module DateMethods
  def update_year
    yr = self.achieved.year
    if self.competition_id == 20 or self.competition_id == 19
      self.year = yr + 1
    else
    self.year = yr
    end
  end
end