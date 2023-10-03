require_relative 'lib/person'
require_relative 'lib/student'
require_relative 'lib/teacher'
require_relative 'lib/decorator'

# Create a new person
person = Person.new(30, name: 'Omid Fakheri')

# Test the setters
person.name = 'Omid Fakheri'
person.age = 30

puts 'Person Info:'
puts "Person name: #{person.name}"
puts "Person age: #{person.age}"
puts "Person ID: #{person.id}"
puts "Can person use services?: #{person.can_use_services?}"
puts

# Create a new student
student = Student.new(16, 'Biology')

# Test the setters
student.name = 'Mahmood Azizi'
student.age = 17
student.classroom = 'Chemistry'

puts 'Student Info:'
puts "Student name: #{student.name}"
puts "Student age: #{student.age}"
puts "Student ID: #{student.id}"
puts "Student classroom: #{student.classroom}"
puts "Can student use services?: #{student.can_use_services?}"
puts "Student played hooky: #{student.play_hooky}"
puts

# Create a new teacher
teacher = Teacher.new(35, 'Mathematics')

# Test the setters
teacher.name = 'Mr. Rahimi'
teacher.age = 32
teacher.specialization = 'Mathematics'

puts 'Teacher Info:'
puts "Teacher name: #{teacher.name}"
puts "Teacher age: #{teacher.age}"
puts "Teacher ID: #{teacher.id}"
puts "Teacher specialization: #{teacher.specialization}"
puts "Can teacher use services?: #{teacher.can_use_services?}"
puts 

# Test Person class
person = Person.new(22, name: 'maximilianus')
puts "Person's correct name: #{person.correct_name}"

# Test CapitalizeDecorator
capitalized_person = CapitalizeDecorator.new(person)
puts "Capitalized person's correct name: #{capitalized_person.correct_name}"

# Test TrimmerDecorator
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts "Capitalized and trimmed person's correct name: #{capitalized_trimmed_person.correct_name}"