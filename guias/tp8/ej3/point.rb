class Point
  attr_reader :x_val, :y_val

  def initialize(x, y)
    @x_val = x
    @y_val = y
  end

  def distance(other)
    ((@x_val - other.x)**2 + (@y_val - other.y)**2)**0.5
  end

  def to_s
    "{#{@x_val}, #{@y_val}}"
  end

  alias inspect to_s

  def ==(other)
    return false unless other.is_a? Point
    @x_val == other.x_val && @y_val == other.y_val
  end

  def eql?(other)
    self == other
  end

  def hash
    @x_val.hash
  end
end
