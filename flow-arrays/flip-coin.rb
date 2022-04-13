### Build a game to flip a coin and guess

# Throw the coin / compute throwing the coin
coin_throw = ["heads", "tails"].sample
# Ask the the user if it was heads or tails
puts "What is you guess?"
# get the user's guess
user_guess = gets.chomp


# Compare the user's guess with the throw
# Tell them if they won

# p coin_throws
condition = coin_throw == user_guess

result = condition ? "won" : "lost"

puts "You #{result}"
