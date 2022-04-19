require "json"
require "open-uri"

puts "Search user:"
print "> "
user_name = gets.chomp

url = "https://api.github.com/users/#{user_name}"

user_serialized = URI.open(url).read

# p user_serialized

user = JSON.parse(user_serialized)

# p user

puts "#{user["name"]} - #{user["bio"]}"
