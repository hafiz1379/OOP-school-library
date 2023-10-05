class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} must implement the correct_name method"
  end
end

class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(name, age, parent_permission: true)
    super()
    @id = rand(1..500)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = [] # Array of Rental instances
  end

  def correct_name
    @name
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def link_rental(rental)
    @rentals << rental
  end

  private

  def of_age?
    @age >= 18
  end
end
