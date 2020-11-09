require_relative 'bank_account'

class CheckingAccount < BankAccount
  def initialize(id, overdraft)
    @balance = 0
    @id = id
    @overdraft = overdraft
  end

  def can_extract(amount)
    @balance - amount >= -@overdraft
  end
end
