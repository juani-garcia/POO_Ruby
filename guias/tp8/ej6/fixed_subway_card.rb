require_relative 'subway_central'

class FixedSubwayCard
  def initialize(central, rides)
    raise 'Invalid amount of rides' unless rides.is_a? Integer
    @central = central
    @rides = rides
  end

  def ride
    raise 'No rides available' unless @rides > 0
    @rides -= 1
  end

  def to_s
    "Fixed Subway Card [Central: SubwayCentral [$#{@central.ride_cost}]][Rides: #{@rides}]"
  end
end
