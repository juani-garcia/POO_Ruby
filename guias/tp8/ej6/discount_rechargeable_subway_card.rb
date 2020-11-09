require_relative 'rechargeable_subway_card'

class DiscountRechargeableSubwayCard < RechargeableSubwayCard
  def initialize(central, discount)
    @discount = discount
    super(central)
  end

  def can_ride
    @balance > @discount * @central.ride_cost
  end
end
