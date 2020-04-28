# 1. Attributes

"Hello!".length # => I apply the method length on a string, and it returns the attribute `6` of type `Integer`
4.even? # => returns `true`, an attribute of type `TrueClass` (a method with a question mark returns a boolean, it's convention! check https://rubyonrails.org/doctrine/#convention-over-configuration)


teachers = [ # => returns the variable `teachers`: an `Array` with inside two `Hash`es
  {
    name: "Mariana",
    age: 37,
    country: "Portugal"
  },
  {
    name: "Gabriele",
    age: 27,
    country: "Italy"
  },
  {
    name: "Shannon",
    age: 33,
    country: "USA"
  }
]

# Procs and lambdas (block of code contained in `do end` or `{ }`)
# A lambda *is a proc* with some additional features (see previous the lesson!)
print_name = Proc.new { |person| puts person[:name] }
# or
print_name = lambda { |person| puts person[:name] }
# or (new faster and cleaner way for a lambda!)
print_name = ->(person) { puts person[:name] }

teachers.each(&print_name)

age = Proc.new { |a| puts a[:age]}
age = lambda { |a| puts a[:age]}
teachers.each(&age)

# From now on always use this syntax to assign a lambda (the other ones are obsolete)
get_flag = ->(person) do
    case person[:country]
    when "Portugal" then "🇵🇹"
    when "Italy" then "🇮🇹"
    when "USA" then "🇺🇸"
    else "🌍"
    end
  end

puts teachers

flag = ->(c) {puts c[:country]}
teachers.each(&flag)

# 2. Behaviours

# 2.1 Standard methods

# Let's pass the lambda to a method
# The most common methods for a collection:
# - :map  -> returns the values
# - :each -> returns always nil, but it can execute some other methods (actions) while looping

flags = teachers.map(&get_flag)
puts flags 

puts "---"
puts "Le Wagon guys:"
teachers.each_with_index do |teacher, index|
  puts "#{teacher[:name]} from #{flags[index]}"
end
puts "---"

# 2.2 Custom methods

def get_italians(people)
    is_italian = ->(person) { person[:country] == "🇮🇹" } # another lambda
    people.filter(&is_italian) # pass the lambda to the filter method, and return (implicitly!) the italian teachers
  end
  
  students = [
    {
      name: "Federico",
      country: "🇮🇹"
    },
    {
      name: "Nuno",
      country: "🇵🇹"
    },
    {
      name: "Flavia",
      country: "🇮🇹"
    },
    {
      name: "Riccardo",
      country: "🇮🇹"
    }
  ]
  
  italian_students = get_italians(students).map { |student| student[:name] } # call the method and get the string
  puts "Some italians guys following the course: #{italian_students.join(', ')}"

