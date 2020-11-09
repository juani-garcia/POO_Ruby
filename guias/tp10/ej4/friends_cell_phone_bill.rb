require_relative 'cell_phone_bill'

class FriendsCellPhoneBill < CellPhoneBill
  LIMIT = 5
  attr_accessor :discount
  def initialize(number, discount)
    super(number)
    @friends = []
    @discount = discount
  end

  def add_friend(number)
    raise 'Already reached friend limit' unless @friends.length < LIMIT
    @friends << number
  end

  def remove_friend(number)
    @friends.delete(number)
  end

  def process_bill
    @calls.map do |c|
      @friends === c.to ? c.cost * discount : c.cost
    end.reduce(:+)
  end
end
