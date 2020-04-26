#Exercícios da aula

# 1. *Arrays*

# Create
beatles = ["John", "Paul", "George", "Ringos"]

beatles = Array.new
beatles.push("John", "Paul", "George", "Ringos")
beatles.each { |beatle| puts beatle }
# Read
puts beatles[0]
puts beatles[3]
puts beatles[5]
# or in a loop:
beatles.each { |beatle| puts beatle }

# Update
beatles[3] = "Ringo"

puts beatles 

# Delete
beatles.delete_at(1)
puts beatles 

# 2. *Hashes*

# Create
beatles = {
singer: "Paul",
drums: "George",
bass: "Ringos",
guitarrist: "John"
}

# also Hash.new to create an empty hash (less common)

beatles = Hash.new("No one")
beatles[:singer] = "Paul"
beatles[:drums] = "George"
beatles[:guitarrist] = "John"
beatles[:bass] = "Ringos"

# Read

puts beatles[:singer]
puts beatles[:drums]
puts beatles[:piano]

# or in a loop:
beatles.each {|role,name| puts "The #{role} is #{name}!"}

# Update

beatles[:bass]="Ringo"
puts beatles 

# Delete

beatles.delete(:drums)
puts beatles 

# *Symbols*
# just another data type, used mainly to "label" something (so perfect for hash keys and methods!)

my_symbol = :diana
puts my_symbol
puts my_symbol.class # => Symbol

# Convert strings to symbols
names = ["Diana", "D", "Di"]
thename = names.each do |name| 
  puts name.to_sym
end 

# Bonus: the select/filter method (different name, same method!)
# use it to filter records from a collection

# With an array
numbers = [-12, 334, 0, 31, -91, -11, 28]
positive_numbers = numbers.select { |n| n > 0 }
puts positive_numbers

# With an hash
movie_ratings = {
  pulp_fiction: 5,
  memento: 4.5,
  parasite: 4,
  the_matrix: 4.5,
  truman_show: 4,
  full_metal_jacket: 5
}

my_top_movies = movie_ratings.select { |movie, rating| rating == 5 }
puts my_top_movies

# Other hash methods
# there are a lot of powerful methods for hashes! Check them all on ruby-doc.org

# Loop through the keys
movie_ratings.each_key do |movie|
  puts movie
end
# same as
movie_ratings.keys.each do |movie|
  puts movie
end

# Loop through the
movie_ratings.each_value do |rating|
  puts rating
end
# same as
movie_ratings.values.each do |rating|
  puts rating
end

#Exercício Codecademy


movies = {
    Mulan: 3,
    Tarzan: 2,
    Hercules:1
  }
  
  puts "What do you want to do?"
  puts " -- Type add to add a movie"
  puts " -- Type update to update the rating"
  puts " -- Type display to show the movies"
  puts " -- Type delete to delete a movie"
  choice = gets.chomp.downcase
  
  case choice
  when
    "add"
    puts "Which movie do you wand to add?"
    title= gets.chomp
    if movies[title.to_sym].nil?
    puts "What is the rating for this movie? (from 0 to 4)"
    rating = gets.chomp 
    movies[title.to_sym] = rating.to_i
    puts "The movie #{title} has been added with the rating #{rating}"
    else 
    puts "The movie already exists with the rating #{movies[title.to_sym]}"
    end 
  when 
    "update"
     puts "Which movie do you wand to update?"
    title= gets.chomp
    if movies[title.to_sym].nil?
    puts "That movie does't exist!"
    else 
    puts "What is the new rating for this movie? (from 0 to 4)"
    rating = gets.chomp 
    movies[title.to_sym] = rating.to_i
    puts "The movie #{title} has been updated with the rating #{rating}"
    end 
  when 
    "display"
    movies.each do |movie, rate|
      puts "#{movie}: #{rate}"
    end 
  when
    "delete"
      puts "Which movie do you want to delete?"
    title= gets.chomp
    if movies[title.to_sym].nil?
    puts "That movie doesn't exist!" 
    else 
    movies.delete(title.to_sym)
    puts "The movie #{title.to_sym} was deleted!"
    end
  else
    puts "Error!"
  end 