require_relative 'wheel'

class Gear
  attr_writer :rim
  attr_writer :tire

  def initialize(chainring, cog, *wheel)
    @cog = cog
    @chainring = chainring
    @wheel = Wheel.new(wheel[0], wheel[1])
  end

  def ratio
    @chainring / @cog.to_f
  end

  def gear_inches
    ratio * @wheel.diameter
  end
end
