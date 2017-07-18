module SharedMethods
  
  def update_year
    self.year = achieved.strftime("%Y")
  end
end