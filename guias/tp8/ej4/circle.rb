require_relative 'ellipse'

class Circle < Ellipse
  def initialize(center, radius)
    super(center, radius, radius)
  end

  def to_s
    "Circulo [Centro: #{@center}, Radius: #{@mayor}]"
  end
end
