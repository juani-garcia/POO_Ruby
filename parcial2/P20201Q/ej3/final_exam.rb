class FinalExam

  def initialize(course)
    @course, @enrolled = course, []
  end

  def enroll(student)
    @enrolled << student unless enrolled?(student)
  end

  def enrolled?(student)
    @enrolled.include?(student)
  end

  def enrolled_count
    @enrolled.length
  end

  def enrolled
    @enrolled
  end

  def course
    @course
  end

end
