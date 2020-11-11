require_relative 'quota_final_exam'
require_relative 'correlative_final_exam'
require_relative 'course'
require_relative 'student'

pi = Course.new('PI')
poo = Course.new('POO')
pod = Course.new('POD')
matias = Student.new('Matias', [pi, poo])
natalia = Student.new('Natalia', [pi, poo, Course.new('EDA')])
solange = Student.new('Solange', [pi])
final_exam = FinalExam.new(pi)
final_exam.enroll(matias)
final_exam.enroll(Student.new('Matias', [pi, poo])) # No se agrega porque ya hay un  inscripto de nombre Matias
final_exam.enroll(natalia)
final_exam.enroll(solange)
puts "Enrolled Students: #{final_exam.enrolled}"
puts '##########'
quota_final_exam = QuotaFinalExam.new(poo, 2)
quota_final_exam.enroll(matias)
quota_final_exam.enroll(Student.new('Matias', [pi, poo])) # No se agrega porque ya hay un inscripto de nombre Matias
quota_final_exam.enroll(natalia)
quota_final_exam.enroll(solange) # No se agrega porque superó el cupo
puts "Enrolled Students: #{quota_final_exam.enrolled}"
puts '##########'
correlative_final_exam = CorrelativeFinalExam.new(pod, [pi, Course.new('POO')])
correlative_final_exam.enroll(matias)
correlative_final_exam.enroll(Student.new('Matias', [pi, poo])) # No se agrega porque ya hay un inscripto de nombre Matias
correlative_final_exam.enroll(natalia)
correlative_final_exam.enroll(solange) # No se agrega porque no tiene todas las correlativas
puts "Enrolled Students: #{correlative_final_exam.enrolled}"

