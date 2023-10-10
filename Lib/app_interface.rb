require_relative 'app'

class InputCollector
  def self.get_input(prompt)
    print "#{prompt}: "
    gets.chomp
  end

  def self.get_integer_input(prompt)
    loop do
      input = get_input(prompt)
      return input.to_i if input.match?(/^\d+$/)

      puts 'Invalid input. Please enter a valid integer.'
    end
  end
end

class StudentInputValidator
  def self.validate(_name, _age)
    # Add your validation logic here
    true
  end
end

class TeacherInputValidator
  def self.validate(_name, _subject)
    # Add your validation logic here
    true
  end
end

class PersonFactory
  def self.create_student
    name = InputCollector.get_input('Enter student name')
    age = InputCollector.get_integer_input('Enter student age')

    if StudentInputValidator.validate(name, age)
      # Create the student object and add it to your application
      puts 'Student created successfully.'
    else
      puts 'Invalid input for creating a student.'
    end
  end

  def self.create_teacher
    name = InputCollector.get_input('Enter teacher name')
    subject = InputCollector.get_input('Enter teacher subject')

    if TeacherInputValidator.validate(name, subject)
      # Create the teacher object and add it to your application
      puts 'Teacher created successfully.'
    else
      puts 'Invalid input for creating a teacher.'
    end
  end
end

class AppInterface
  ACTIONS = {
    1 => :list_books,
    2 => :list_people,
    3 => :create_person,
    4 => :create_book,
    5 => :create_rental,
    6 => :list_rentals_for_person,
    7 => :exit_app
  }.freeze

  def initialize(app)
    @app = app
  end

  def run
    loop do
      option = display_menu
      handle_option(option)
    end
  end

  def display_menu
    puts "\nPlease choose an option:"
    ACTIONS.each { |key, value| puts "#{key} - #{value.to_s.tr('_', ' ')}" }
    InputCollector.get_integer_input('Option')
  end

  def handle_option(option)
    action = ACTIONS[option]
    if action
      @app.send(action)
    else
      puts 'Invalid option. Please try again.'
    end
  end

  def create_person
    puts '1 - Create Student'
    puts '2 - Create Teacher'
    type = InputCollector.get_integer_input('Select person type (1 for Student, 2 for Teacher)')

    case type
    when 1
      PersonFactory.create_student
    when 2
      PersonFactory.create_teacher
    else
      puts 'Invalid person type.'
    end
  end
end
