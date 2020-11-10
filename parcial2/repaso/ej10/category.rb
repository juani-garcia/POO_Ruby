class Category

  attr_reader :maximum, :multiplier

  def initialize
    raise 'Abstract class'
  end

  def can_add?(amount)
    amount < @maximum
  end

end
