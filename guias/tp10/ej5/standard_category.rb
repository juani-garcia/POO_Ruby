require_relative 'category'

class StandardCategory < Category

  def initialize
    @max_days = 2
    @multiplier = 1.5
    @points = 1
  end

end