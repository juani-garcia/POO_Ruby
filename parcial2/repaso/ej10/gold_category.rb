require_relative 'category'

class GoldCategory < Category

  def initialize
    @maximum = 2000
    @multiplier = 1.1
  end

end
