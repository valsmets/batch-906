## check if store is open

# puts "What time is it?"
# hour = gets.chomp.to_i

# puts "its open" if hour > 9 && hour < 18


# number = gets.chomp.to_i
# puts "your number #{number} is even!" if number.even?

hour = Time.now.hour

p hour
p hour.class

          # true / fase    ||      true / false
if (hour > 9 && hour < 12) || (hour > 14 && hour < 18)
  puts "The shop is opened!"
else
  puts "Sorry, the shop is closed..."
end
