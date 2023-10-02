require_relative 'person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, parent_permission: true, name: 'Unknown')
    super(age, parent_permission: parent_permission, name: name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
