require '../../../guias/tp8/ej3/point'
require_relative 'movable'

class MovablePoint < Point
  include Movable

  def move_up(_delta)
    @y_val += _delta
  end

  def move_down(_delta)
    @y_val -= _delta
  end

  def move_left(_delta)
    @x_val -= _delta
  end

  def move_right(_delta)
    @x_val += _delta
  end
end