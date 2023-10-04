require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, parent_permission: true, name: 'Unknown')
    super(age, parent_permission: parent_permission, name: name)
    assign_classroom(classroom)
  end

  # Add a method to get the classroom to which the student belongs.
  def get_classroom
    @classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  # Method to assign a classroom to the student and add the student to the classroom's list.
  def assign_classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
