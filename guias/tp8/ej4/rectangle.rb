require_relative 'figure'

class Rectangle < Figure
  attr_reader :top_right, :bottom_left

  def initialize(bottom_left, top_right)
    @bottom_left = bottom_left
    @top_right = top_right
    @base = top_right.x_val - bottom_left.x_val
    @height = top_right.y_val - bottom_left.y_val
  end

  def perimeter
    2 * @base + 2 * @height
  end

  def area
    @base * @height
  end

  def to_s
    "Rectangulo [#{@bottom_left}, #{@top_right}]"
  end

  def ==(other)
    @top_right == other.top_right && @bottom_left == other.bottom_left
  end

  def eql?(other)
    self == other
  end

  def hash
    @bottom_left.hash
  end
end