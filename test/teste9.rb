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
  
  diana = Teacher.new(name:"Diana", country:"Portugal", age:27)


  print_welcome = ->(t) {puts t.welcome_message}
  [diana].each(&print_welcome)

  diana.birthday
  puts "She is turning #{diana.age}"


  