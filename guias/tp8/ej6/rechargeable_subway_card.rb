require_relative 'subway_central'

class RechargeableSubwayCard
  def initialize(central)
    @balance = 0
    @central = central
  end

  def recharge(amount)
    raise 'Invalid ride cost' unless amount.is_a? Numeric
    @balance += amount
  end

  def can_ride
    @balance > @central.ride_cost
  end

  def ride
    raise 'Not enough funds' unless can_ride
    @balance -= @central.ride_cost
  end

  def to_s
    "Rechargeable Subway Card [Central: Subway Central [$#{@central.ride_cost}]] [Balance: $#{@balance}]"
  end
end
