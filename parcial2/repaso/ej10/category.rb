class Category

  attr_reader :maximum, :multiplier

  def initialize
    raise 'Abstract class'
  end

  def to_add(new_miles, old_miles)
    total = get_total(new_miles, old_miles)
    total > @maximum ? @maximum : total
  end

  def get_total(new_miles, old_miles)
    new_miles * @multiplier + old_miles
  end
end
