class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} must implement the correct_name method"
  end
end

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, parent_permission: true, name: 'Unknown')
    super()
    @id = rand(1..500)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    @name
  end
  
  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
