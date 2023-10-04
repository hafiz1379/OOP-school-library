require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, parent_permission: true, name: 'Unknown')
    super(age, parent_permission: parent_permission, name: name)
    @classroom = classroom
    classroom&.add_student(self)
  end

  # rubocop:disable Naming/AccessorMethodName
  # Add a method to get the classroom to which the student belongs.
  def get_classroom
    @classroom
  end
  # rubocop:enable Naming/AccessorMethodName

  def play_hooky
    '¯\(ツ)/¯'
  end
end
