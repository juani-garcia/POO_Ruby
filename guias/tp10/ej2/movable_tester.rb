require_relative 'movable_circle'
require_relative 'movable_point'

center = MovablePoint.new(0, 0)
circle = MovableCircle.new(center, 1)
puts circle
circle.move_down(2)
puts circle
