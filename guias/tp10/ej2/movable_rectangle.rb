require '../../../guias/tp8/ej4/rectangle'
require_relative 'movable_figure'

class MovableRectangle < Rectangle
  include MovableFigure

  def point_set
    [@bottom_left, @top_right]
  end

end