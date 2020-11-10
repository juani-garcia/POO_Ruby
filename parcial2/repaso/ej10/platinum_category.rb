require_relative 'category'

class PlatinumCategory < Category

  def initialize
    @maximum = -1
    @multiplier = 1.25
  end

  def can_add?(amount)
    true
  end

end
