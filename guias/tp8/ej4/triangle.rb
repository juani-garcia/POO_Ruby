require_relative 'figure'

class Triangle < Figure
  def initialize(point_a, point_b, point_c)
    @point_a = point_a
    @point_b = point_b
    @point_c = point_c
  end

  def perimeter
    @point_a.distance(@point_b) + @point_b.distance(@point_c) + @point_c.distance(@point_a)
  end

  def sp
    perimeter/2
  end

  def area
    (sp*(sp-@point_a.distance(@point_b))*(sp-@point_b.distance(@point_c))*(sp-@point_c.distance(@point_a)))**0.5
  end

  def to_s
    "[#{@point_a}, #{@point_b}, #{@point_c}]"
  end
end
