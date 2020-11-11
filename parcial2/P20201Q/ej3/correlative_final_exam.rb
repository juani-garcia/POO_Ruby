require_relative 'final_exam'

class CorrelativeFinalExam < FinalExam

  def initialize(course, correlatives)
    super(course)
    @correlatives = correlatives
  end

  def enroll(student)
    student.has_passed?(@correlatives) ? super : (puts "Error enrolling #{student.name}")
  end
end