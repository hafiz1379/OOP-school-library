# Base Decorator class
require_relative 'person'

class Decorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end
end

# CapitalizeDecorator class
class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

# TrimmerDecorator class
class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name[0..9]
  end
end
