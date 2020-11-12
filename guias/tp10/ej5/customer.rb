class Customer

  def initialize(name)
    @name, @points, @charges = name, 0, 0
  end

  def add_points(amount)
    @points += amount
  end

  def add_charges(amount)
    @charges += amount
  end

  def to_s
    "#{@name}'s Resume points: #{@points}, charge: #{@charges}"
  end

end