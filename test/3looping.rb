#Exercicios da Aula

# 1. WHILE LOOP

number = 1 

while number < 11
  puts number
  number +=1
end 

# 2. UNTIL LOOP

number = 1 

until number == 11
  puts number
  number +=1
end 

# 3. FOR LOOP

#do 1 e tudo no meio até ao 10, sem o 10
for number in 1...10 
  puts number
end 

#inclui o 10 
for number in 1..10 
  puts number
end 

# 4. NEXT 

for number in 1..5
  next if number % 2 == 0 
  puts number
end 

minutes=Hash.new
minutes ["1"] = 3
minutes ["2"] = 6
minutes ["3"] = 5
minutes ["4"] = 3
minutes ["5"] = 5

minutes.each {|song, time| 
for number in 1...5
  next if time < 4 
  puts song
end 
}

#5. LOOP

number = 0 
loop do 
  number +=1
  puts number 
  break if number == 5
end 

#6. EACH METHOD

number = [1,2,3,4,5]

number.each do |x|
  puts "Displaying number: #{x}"
end 

#6. Times

3.times do
  puts "Goal"
end 

#same as

number = 0

while number < 3
  number += 1
  puts "Goal"
end 

___ 

number = 0

until number == 3
  number += 1
  puts "Goal"
end 

___

for number in 1..3
  puts "Goal"
end 

___

number = 0

loop do 
  puts "Goal"
  number +=1
  break if number == 3
end 

# Exercício Codeacademy

puts "What's the text?"
text = gets.chomp

puts "Whats's the redact?"
redact = gets.chomp 

words = text.split(" ")
words.each do |word|
  if text == redact
    print "REDACTED "
  else 
  print word + " "
  end 
end 

# What could you do to make sure your redactor redacts a word regardless of whether it’s upper case or lower case?

puts "What's the text?"
text = gets.chomp
text.downcase!

puts "Whats's the redact?"
redact = gets.chomp 
redact.downcase!

words = text.split(" ")
words.each do |word|
  if text == redact
    print "REDACTED "
  else 
  print word + " "
  end 
end 


# How could you make your program take multiple, separate words to REDACT?


# How might you make a new redacted string and save it as a variable, rather than just printing it to the console?


puts "Document to be Redacted:"
text = gets.chomp

puts "Word to be Redacted"
redact = gets.chomp

words = text.split(" ")

words_to_redact = redact.split(" ")

words_to_redact.map!(&:downcase)

redacted_text= [] 

words.each do |i|
  if words_to_redact.include? i.downcase
    redacted_text.push("REDACTED")
  else
    redacted_text.push(i) 
  end
end
puts (redacted_text *" ")