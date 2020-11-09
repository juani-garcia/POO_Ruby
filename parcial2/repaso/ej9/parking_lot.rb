require_relative 'parking_space'

class ParkingLot
  def initialize(name)
    @name = name
    @parking_spaces_by_level = {}
  end

  def add_parking_space(level, lot)
    @parking_spaces_by_level[level] = {} unless @parking_spaces_by_level.key? level
    @parking_spaces_by_level[level][lot] = ParkingSpace.new(lot)
  end

  def park(level, lot)
    check_lot(level, lot)
    @parking_spaces_by_level[level][lot].park
  end

  def unpark(level, lot)
    check_lot(level, lot)
    @parking_spaces_by_level[level][lot].unpark
  end

  def check_lot(level, lot)
    raise 'Invalid level' unless @parking_spaces_by_level.key? level
    raise 'Invalid Parking Lot' unless @parking_spaces_by_level[level].key? lot
  end

  def information
    s = "Parking Lot #{@name}\n"
    @parking_spaces_by_level.keys.sort.each do |level|
      s += "Level #{level}\n"
      @parking_spaces_by_level[level].values.sort.each do |parking_space|
        s += "#{parking_space}\n"
      end
    end
    s
  end

end
