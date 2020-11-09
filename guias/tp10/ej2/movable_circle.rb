require_relative 'movable_ellipse'

class MovableCircle < MovableEllipse
  def initialize(center, radius)
    super(center, radius, radius)
  end
end