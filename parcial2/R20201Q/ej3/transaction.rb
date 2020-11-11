class Transaction

  attr_reader :miles, :from, :to

  def initialize(from, to, miles)
    @from, @to, @miles = from, to, miles
  end

  def to_s
    "From #{@from} to #{@to} Earned #{@miles} miles"
  end

  def <=>(other)
    return nil unless other.is_a? Transaction
    other.miles <=> @miles
  end

end

