class BankAccount
  def initialize
    raise 'Abstract class'
  end

  def can_extract(amount)
    raise 'Needs to be implemented'
  end

  def extract(amount)
    raise 'Not enough funds' unless can_extract(amount)
    @balance -= amount
  end

  def deposit(amount)
    @balance += amount
  end

  def to_s
    "Cuenta #{@id} con saldo #{@balance}"
  end
end
