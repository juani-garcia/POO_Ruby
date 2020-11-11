class Student

  attr_reader :name

  def initialize(name, passed_courses)
    @name, @passed_courses = name, passed_courses
  end

  def ==(other)
    @name == other.name
  end

  def has_passed?(subjects)
    subjects.each do |s|
      return false unless @passed_courses.include? s
    end
    true
  end

  def eql?(other)
    self == other
  end

  def to_s
    @name
  end

  alias inspect to_s

end