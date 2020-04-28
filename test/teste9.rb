class Teacher
    def initialize(attributes = {}) # assign an empty hash here to have a default nil 'fallback' value
      # Attributes of one teacher (an instance of the class `Teacher`)
      # @variable = variable
      # if attributes[:name_of_the_variable] doesn't exist it will be `nil`
      @name = attributes[:name]
      @country = attributes[:country]
      @age = attributes[:age]
    end
  
    # Behaviours of the teacher => actions I want to execute on the instance variables (crud = create read update delete)
  
    # Read the age
    def age
      @age # always without the return keyword!
    end
  
    # Read a welcome message
    def welcome_message
      "Hello! I'm #{@name} and I'm from #{@country}"
    end
  
    # Update the @age attribute
    def birthday
      puts "Today it's #{@name}'s birthday! 🎉"
      @age += 1 # behaviour/action that modifies the age attribute!
    end
  end

  attributes = {
    name: "Gabriele",
    age: 26,
    country: "Italy"
  }
  
  # Instances of the Teacher model, initialized with some attributes
  gabriele = Teacher.new(attributes)
  mariana  = Teacher.new(name: "Mariana", country: "Portugal")
  
  # Actions executed on the instance of the model (behaviours)
  print_teacher_welcome_message = ->(teacher) { puts teacher.welcome_message }
  [gabriele, mariana].each(&print_teacher_welcome_message)
  
  gabriele.birthday
  puts "He is turning #{gabriele.age}" # => 27
  