require '../../../guias/tp8/ej4/ellipse'
require_relative 'movable_figure'

class MovableEllipse < Ellipse
  include MovableFigure

  def point_set
    [@center]
  end

end
