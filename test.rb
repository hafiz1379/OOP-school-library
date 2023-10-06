require_relative 'lib/person'
require_relative 'lib/student'
require_relative 'lib/teacher'
require_relative 'lib/decorator'
require_relative 'lib/classroom'
require_relative 'lib/book'
require_relative 'lib/rental'
# Create a new person
person = Person.new('Omid Fakheri', 30)

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
classroom_biology = Classroom.new('Biology') # Create a classroom instance
student = Student.new('Mahmood Azizi', 16, classroom_biology, parent_permission: true)

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
teacher = Teacher.new('Mr. Rahimi', 32, 'Mathematics', parent_permission: true)

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
person = Person.new('maximilianus', 22)
puts "Person's correct name: #{person.correct_name}"

# Test CapitalizeDecorator
capitalized_person = CapitalizeDecorator.new(person)
puts "Capitalized person's correct name: #{capitalized_person.correct_name}"

# Test TrimmerDecorator
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts "Capitalized and trimmed person's correct name: #{capitalized_trimmed_person.correct_name}"
puts

# Create classrooms and students
classroom_a = Classroom.new('Class A')
classroom_b = Classroom.new('Class B')

# Creating students with age, classroom, name, and parent_permission
Student.new('John', 18, classroom_a, parent_permission: true)
Student.new('Jane', 17, classroom_b, parent_permission: false)

# Create classrooms and students
classroom_a = Classroom.new('Class A')
classroom_b = Classroom.new('Class B')

# Creating students with age, classroom, name, and parent_permission
Student.new('John Doe', 18, classroom_a, parent_permission: true)
Student.new('Jane Smith', 17, classroom_b, parent_permission: false)

# Create classrooms and students (Unique names and ages)
classroom_c = Classroom.new('Class C')
classroom_d = Classroom.new('Class D')

# Creating students with age, classroom, name, and parent_permission (Unique names and ages)
Student.new('Alice Johnson', 18, classroom_c, parent_permission: true)
Student.new('Bob Williams', 17, classroom_d, parent_permission: false)

# Create books and people
book1 = Book.new('Book 1', 'Author 1')
book2 = Book.new('Book 2', 'Author 2')

person1 = Person.new('Person 1', 30)
person2 = Person.new('Person 2', 25)

# Create rentals
Rental.new('2023-07-24', book1, person1)
Rental.new('2023-07-25', book2, person1)
Rental.new('2023-07-26', book1, person2)

puts "#{person1.name}'s rentals:"
person1.rentals.each do |rental|
  puts "Book: #{rental.book.title}, Date: #{rental.date}"
end
puts

puts "#{book1.title}'s rentals:"
book1.rentals.each do |rental|
  puts "Person: #{rental.person.name}, Date: #{rental.date}"
end
