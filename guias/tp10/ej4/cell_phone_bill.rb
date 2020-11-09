require_relative 'call'

class CellPhoneBill
  def initialize(number)
    @number = number
    @calls = []
  end

  def register_call(to_number, duration)
    @calls << Call.new(@number, to_number, duration)
  end

  def process_bill
    @calls.map{ |c| c.cost }.reduce(:+)
  end
end
