### CHALLENGE: Build a rock paper scissors game
### EXTRA: make it a loop

## ---- REFACTORED ----- ##
def player_won?(player_move, computer_move)
   if computer_move == 'rock'
    player_wins = player_move == 'paper'
  elsif computer_move == 'paper'
    player_wins = player_move == 'scissors'
  elsif computer_move == 'scissors'
    player_wins = player_move == 'rock'
  end
  return player_wins
end

puts "Let's play a game"
player_move = nil

until player_move == "n"

  puts "Choose between rock, paper and scissors."
  moves = ['rock', 'paper', 'scissors']
  computer_move = moves.sample
  player_move = gets.chomp.downcase

until moves.include?(player_move)
  puts 'Wrong input, choose between rock, paper and scissors'
  player_move = gets.chomp.downcase
end

  if player_move == computer_move
    puts "The computer choose #{computer_move}. It's a draw. 🤝"
  else
    if player_won?(player_move, computer_move)
      puts "The computer chose #{computer_move}, you win! 🎉"
    else
      puts "The computer chose #{computer_move}, computer wins! ❌"
    end
  end
  puts "Want to play again? (y/n)"
  player_move = gets.chomp.downcase
  until player_move == 'y' || player_move == 'n'
    puts 'Wrong input, choose (y/n)'
    player_move = gets.chomp.downcase
  end
end

puts "good bye! 👋"


## ---- LIVECODE ORIGINAL ---- ##
# puts "Let's play a game"
# playersmove = nil

# while  playersmove != "n"
#   # Ask a player to choose between rock paper and scissors
#   puts "Choose between rock, paper and scissors."
#   # Get the players move
#   playersmove = gets.chomp
#   # compute the computers move
#   moves = ["rock", "paper", "scissor"]
#   # compare moves and tell the player if the won or lost
#   computer_move = moves.sample
#   if playersmove == computer_move
#     puts "It's a tie"
#   elsif playersmove == "rock" && computer_move == "paper"
#     puts "You lost.The computer has #{computer_move}."
#   elsif playersmove == "rock" && computer_move == "scissor"
#     puts "You won.The computer has #{computer_move}."
#   elsif playersmove == "paper" && computer_move == "scissor"
#     puts "You lost.The computer has #{computer_move}."
#   elsif playersmove == "paper" && computer_move == "rock"
#     puts "You won.The computer has #{computer_move}."
#   elsif playersmove == "scissor" && computer_move == "rock"
#     puts "You lost.The computer has #{computer_move}."
#   elsif playersmove == "scissor" && computer_move == "paper"
#     puts "You won.The computer has #{computer_move}."
#   end

#   puts "Want to play again? (y/n)"
#   playersmove = gets.chomp
# end

# puts "good bye!"


