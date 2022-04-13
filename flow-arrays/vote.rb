#### Check if an user is old enough to vote

# Ask the user what their age is
puts "What is you age?"
# Get the age from the user
age = gets.chomp.to_i
# Check if the user is older than 18
# condition = age >= 18

# p condition.class
if  age >= 18
  # If yes thell them they an vote
  puts "You can vote!"
else
  puts "You can't vote"
end


