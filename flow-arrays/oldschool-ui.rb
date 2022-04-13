puts "What action do you want to do?"
puts "CREATE | READ | UPDATE"
print "> "

user_input = gets.chomp.downcase

case user_input
when user_input
  puts "Creating!"
when "read"
  puts "reading!"
when "update"
  puts "updating"
end
