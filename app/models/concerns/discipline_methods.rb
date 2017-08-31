module DisciplineMethods
  def couple?
    if self.pairs?
      true
    elsif self.dance?
      true
    elsif self.couples?
      true
    else
      false
    end
  end

  def two_skaters?
    if self.couple? or self.team?
      true
    else
      false
    end
  end

  def group
    self.level.group
  end

  def interpretive?
    self.group.name == "Interpretive"
  end

  def dance?
    self.event.name == "Dance"
  end

  def pairs?
    self.event.name == "Pairs"
  end

  def couples?
    self.event.name == "Couples"
  end

  def adult?
    self.group.name == "AdultSkate"
  end

  def triathalon?
    self.group.name == "Triathalon"
  end

  def team?
    self.group == "STAR Team"
  end
end