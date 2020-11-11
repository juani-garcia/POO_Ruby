class Course

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ==(other)
    @name == other.name
  end

  def eql?(other)
    self == other
  end

end
