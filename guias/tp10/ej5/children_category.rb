require_relative 'category'

class ChildrenCategory < Category

  def initialize
    @max_days = 3
    @multiplier = 1.5
    @points = 1
  end

end