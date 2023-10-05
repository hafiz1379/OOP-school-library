require_relative 'person'

# Class representing a student
class Student < Person
  attr_accessor :classroom

  def initialize(name, age, classroom, parent_permission: true)
    super(name, age, parent_permission: parent_permission)
    self.classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
