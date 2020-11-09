module MovableFigure
  def point_set
    raise 'Not implemented'
  end

  def move_up(_delta)
    point_set.each {|p| p.move_up(_delta)}
  end

  def move_down(_delta)
    point_set.each {|p| p.move_down(_delta)}
  end

  def move_left(_delta)
    point_set.each {|p| p.move_left(_delta)}
  end

  def move_south(_delta)
    point_set.each {|p| p.move_south(_delta)}
  end

end
