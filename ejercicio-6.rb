module Test
  def result
    ((@nota1 + @nota2)/ 2.0 > 4) ? "Estudiante aprobado" : "Estudiante reprobado"
  end
end

module Attendance
  def self.student_quantity
    @@quantity
  end
end

class Student
  attr_reader :name, :nota1, :nota2
  include Test,Attendance
  @@quantity = 0
  def initialize(name, nota1 = 4, nota2 = 4)
    @name = name
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end
end

l = []
10.times { |s| l << Student.new("juanito #{s}",rand(1..7),rand(1..7)) }

puts l[5].name
puts l[5].nota1
puts l[5].nota2
puts l[5].result
puts Student.student_quantity