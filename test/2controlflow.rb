# Exercicio CodeAcademy

print "Input?"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
   puts "Now, we read this #{user_input.gsub!(/s/, "th")}!"
else
  print "There is no s"
end 

#Com duas das perguntas

print "Input?"
user_input = gets.chomp

if user_input == ""
  print "Can you say again?"
  user_input = gets.chomp
end

if user_input.include?("s") ||   user_input.include?("S")
   user_input.gsub!(/s/, "th")
   user_input.gsub!(/S/, "Th")
   puts "Now, we read this #{user_input}!"
else
  print "There is no s"
end 