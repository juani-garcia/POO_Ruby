class MultipleCounter
  attr_accessor :count

  def initialize(times)
    @times = times
    @count = 0
  end

  def increment
    @count += @times
  end

  def decrement
    @count -= @times
  end

  def to_s
    "El contador esta en #{@count} y el paso es #{@times}"
  end
end
