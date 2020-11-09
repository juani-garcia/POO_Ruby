class Citizen
  attr_reader :id
  def initialize(first_name, last_name, id)
    @first_name = first_name
    @last_name = last_name
    @id = id
  end

  def ==(other)
    @id == other.id
  end

  def eql?(other)
    self == other
  end

  def hash
    @id.hash
  end
end
