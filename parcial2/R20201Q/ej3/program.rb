require 'set'

class Program

  attr_reader :miles_transactions

  def initialize
    @miles_transactions = []
  end

  def add_transaction(transaction)
    @miles_transactions << transaction
  end

end
