require_relative 'category'

class PlatinumCategory < Category

  def initialize
    @multiplier = 1.25
  end

  def to_add(new_miles, old_miles)
    get_total(new_miles, old_miles)
  end

end
