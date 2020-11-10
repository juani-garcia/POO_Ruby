require_relative 'standard_category'
require_relative 'gold_category'
require_relative 'platinum_category'

class Member
  attr_reader :name

  def initialize(name, category)
    @name = name
    @category = category
    @miles = Hash.new(0)
  end

  def get_miles(airline)
    @miles[airline]
  end

  def discount_miles(flight)
    @miles[flight.airline] -= flight.miles
    0
  end

  def add_miles(flight)
    total = @category.multiplier * flight.miles +  @miles[flight.airline]
    @category.can_add?(total) ? @miles[flight.airline] = total : @miles[flight.airline] = @category.maximum
    flight.price
  end

  def has_registered?
    @miles.empty?
  end
end
