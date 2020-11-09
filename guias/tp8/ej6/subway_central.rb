class SubwayCentral
  attr_reader :ride_cost

  def initialize(cost)
    @ride_cost = cost
  end

  def ride_cost=(cost)
    raise 'Invalid ride cost' unless cost.is_a? Numeric
    @ride_cost = cost
  end
end
