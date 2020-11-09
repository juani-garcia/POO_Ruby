require_relative 'bank_account'

class SavingsAccount < BankAccount
  def initialize(id)
    @balance = 0
    @id = id
  end

  def can_extract(amount)
    @balance - amount >= 0
  end
end