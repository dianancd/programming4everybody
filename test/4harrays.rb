#Exercicio Code academy

puts "What?"
text = gets.chomp

words =text.split(" ")

frequencies = Hash.new (0)

words.each { |word| frequencies [word] +=1 }

frequencies = frequencies.sort_by { |k,v| v}
frequencies.reverse!

frequencies.each do |word, frequency| 
  puts word + " " + frequency.to_s
end 

#At Le Wagon the initial configuration is done with Sublime Text, but then students can switch to the editor they prefer.
#They do the same things but have some minor differences:
# Sublime is faster, but in general is less customizable and has less packages and integrated functionalities
# Atom is a bit slower, but you have a lot of integrations for Git and other things
# VS Code is another great one

array = ["a", "b", "c"]
array[0] # => "a"
array[0] = "another thing"
array = ["another string", "b", "c"]

#Exercícios Aula

#Display the first post
posts = ["post 1", "post 2", "post3"]
posts [0]

#Add a new post to my collection
posts = ["post 1", "post 2", "post 3"]
posts << "post 4"
puts posts

#or 
posts = ["post 1", "post 2", "post 3"]
posts.push("post 4")
puts posts

#Deleting an element from the array
posts = ["post 1", "post 2", "post 3"]
posts.delete_at(1)
puts posts

#Creating a hash

restaurant_menu = {
  "Pizza" => "15€",
  "Steak" => "12€",
  "Fish" => "18€"
  }

puts restaurant_menu

restaurant_menu = Hash.new
restaurant_menu["Pizza"] = "15€"
restaurant_menu["Steak"] = "12€"
restaurant_menu["Fish"] = "18€"

puts restaurant_menu 

#Acessing a key-value from a hash
restaurant_menu = Hash.new
restaurant_menu["Pizza"] = "15€"
restaurant_menu["Steak"] = "12€"
restaurant_menu["Fish"] = "18€"

puts restaurant_menu["Pizza"]

# Add a pair key value to the hash
restaurant_menu = Hash.new
restaurant_menu["Pizza"] = "15€"
restaurant_menu["Steak"] = "12€"
restaurant_menu["Fish"] = "18€"

restaurant_menu["Pasta"] = "16€"

puts restaurant_menu

# Deleting a key value from the hash
restaurant_menu = Hash.new
restaurant_menu["Pizza"] = "15€"
restaurant_menu["Steak"] = "12€"
restaurant_menu["Fish"] = "18€"

restaurant_menu.delete("Pizza")

puts restaurant_menu

#Iterating over an array

ingridients = ["tomato", "carrots", "onion"]

ingridients.each do |i|
  puts "The main ingridient is #{i}!"
end 

#Iterating over a multidimensional array

ingridients = [["tomato", "carrots", "onion"],["apple", "pear","kiwi"]]

ingridients.each do |sub_array|
  sub_array.each do |i|
    puts "Main ingridient for the recipe is #{i}!"
  end
end

#Iterating over hash

restaurant_menu = {
  "Pizza" => "15€",
  "Steak" => "12€",
  "Fish" => "18€"
  }

  restaurant_menu.each do |plate,price|
    puts "The price for the #{plate} is #{price}!"
  end 





