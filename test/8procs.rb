# *Blocks recap*

names = ["Diana", "D", "Di"]

names.each do |name|
    reversed_name = name.reverse
    puts reversed_name.upcase
end

# A new powerful method: `map`
# same as `collect` (less common), it modifies each element of a collection
names.map { |name| name.upcase}
# Nothing happened, because `map` returns just a copy of the original collection, it doesn't modify it!
# I should assign this copy to a new variable
upcase_names = names.map { |name| name.upcase }
puts upcase_names
# or add `!` to the method to modify the original collection (a method with the `!` is a *destructive method*, because it alters the state of the original object)
names.map! { |name| name.upcase }
puts names # it changed!

# *Yield*
# Use it when you want your method to accept a block

def print_welcome_message
    puts "Welcome!"
    yield
end 

print_welcome_message do
    puts "Thank you all!"
end 

def print_welcome_message
    puts "Welcome!"
    yield if block_given?
end 

print_welcome_message

# I can also pass parameters to the yield:
def print_welcome_message(names)
    puts "Welcome!"
    yield("Diana") if block_given?
end 

print_welcome_message("Diana") { |name| puts "My name is #{name}!"}

# *Procs*
# Use them to assign a block to a variable

def print_welcome_message
    puts "Welcome to today's lesson!"
    yield if block_given?
end

today = Proc.new { puts "The lesson today!"}
print_welcome_message(&today)
# A proc can also be called without relating it to a method, just use the `call` method on the same proc!
today.call

# Other example: print even numbers
numbers = (1..100).to_a 

numbers.each { |n| puts n if n.even? }
# The block above could be reused, let's make it a proc!
even = Proc.new { |n| puts n if n.even?}
numbers.each(&even)

# *Procs and symbols*
# In Ruby, we can pass a method name (*name*, not the whole method!) with a symbol
# This symbol can be easily turned into a proc!

names = ["Diana", "D", "Di"]
names.map! { |name| name.upcase}
# We can refer to the `upcase` method with a symbol (`:upcase`), and convert it to a proc by adding a `&` before
names.map!(&:upcase) # note the colon, we are passing a symbol here!
puts names 

# *Lambdas*
# Same as procs, except for (mainly 2) small differences

def print_welcome_message
    puts "Welcome to today's lesson!"
    yield if block_given?
  end

today = lambda { puts "Today lesson!"}
print_welcome_message(&today)

# Differences with procs:

# 1. Lambdas check the number of arguments, procs don't
my_proc = Proc.new { |x, y| puts "I don't care about arguments!" }
my_proc.call

my_lambda = lambda { |x, y| puts "I will return an error if you don't give me the right arguments! 🤬" }
my_lambda.call # => 'wrong number of arguments' error! I should pass 2 arguments, x and y

# 2. When they return inside a method, lambas don't interrupt the execution of the function after the `call`, procs do
def lambda_method
  my_lambda = lambda { return "Call me, but if you do other stuff after that, I won't be returned :(" }
  my_lambda.call # it doesn't stop here!
  "You just called the lambda, but I'm not a lambda!"
end

def proc_method
  my_proc = Proc.new { return "Call me, and I'll stop the method here!" }
  my_proc.call # it stops here!
  "This text will never be printed :("
end

puts lambda_method
puts proc_method

# Some other examples:

# Proc returning student's grades below 10

students_grades = [10, 15, 5, 4, 19, 14, 2, 7, 13]

under_10 = Proc.new { |grade| grade < 10 } # I could use a lambda here, it would be the same!

low_grades = students_grades.select(&under_10)
puts low_grades

# Lambda returning only the symbols inside an array

names = ["mariana", :gabriele, "shannon"]

filter_symbols = lambda { |x| x.is_a? Symbol } # I could use a proc here, it would be the same!

symbols = names.select(&symbol_filter)
puts symbols










