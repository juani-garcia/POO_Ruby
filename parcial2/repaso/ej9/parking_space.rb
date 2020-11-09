class ParkingSpace
  attr_accessor :lot

  def initialize(lot)
    @lot = lot
    @available = true
  end

  def park
    raise 'Cannot Park Reserved Parking Space' unless @available
    @available = false
  end

  def unpark
    raise 'Cannot Unpark Reserved Parking Space' if @available
    @available = true
  end

  def <=>(other)
    lot <=> other.lot
  end

  def to_s
    "##{@lot}: #{(@available ? 'Available' : 'Reserved')}"
  end

end
