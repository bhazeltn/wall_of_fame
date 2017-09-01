module TextMethods
  def clean(txt)
    txt.gsub(/[!@%&" ]/,'')
  end
end