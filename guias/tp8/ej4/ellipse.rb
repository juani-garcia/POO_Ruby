require_relative 'figure'
include Math

class Ellipse < Figure
  attr_reader :mayor, :minor, :center

  def initialize(center, mayor, minor)
    @center = center
    @minor = minor
    @mayor = mayor
  end

  def area
    PI * @mayor *@minor
  end

  def perimeter
    2 * PI * ((@mayor ** 2 + @minor ** 2)/2)**0.5
  end

  def to_s
    "Elipse [Centro: #{@center}, DMayor: #{@mayor}, DMinor: #{@minor}]"
  end

  def ==(other)
    @center == other.center && @mayor == other.mayor && @minor == other.minor
  end

  def eql?(other)
    self == other
  end

  def hash
    @center.hash
  end
end