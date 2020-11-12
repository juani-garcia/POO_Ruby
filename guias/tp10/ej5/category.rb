class Category

  def initialize
    raise 'Abstract class'
  end

  def cost(days)
    days <= @max_days ? days : @max_days + @multiplier*(days - @max_days)
  end

  def points(days)
    @points
  end

end