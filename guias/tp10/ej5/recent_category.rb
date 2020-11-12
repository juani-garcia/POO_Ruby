require_relative 'category'

class RecentCategory < Category

  def initialize
    @multiplier = 3
    @points = 1
  end

  def points(days)
    super + days - 1
  end

  def cost(days)
    @multiplier * days
  end

end