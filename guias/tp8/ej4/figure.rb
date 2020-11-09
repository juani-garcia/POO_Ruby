require_relative '../ej3/point'

class Figure
  def initialize
    raise 'Abstract class cannot be instanced'
  end

  def perimeter
    raise 'Perimteter need to be implemented'
  end

  def area
    raise 'Area needs to be implemented'
  end

end
