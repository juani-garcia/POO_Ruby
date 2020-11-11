require_relative 'final_exam'

class QuotaFinalExam < FinalExam

  def initialize(course, limit)
    super(course)
    @limit = limit
  end

  def enroll(student)
    enrolled_count == @limit ? (puts "Error enrolling #{student}") : super
  end

end
