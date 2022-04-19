# Welcome the user.
puts "🌲 Welcome to your christmast list 🌲"
# Display the actions.
# Give the user the option to quit the program and say goodbye.

user_action = ""

until user_action == "quit"
  puts "What do you want to do? | List | Add | Delete | or quit to exit"
  # The user will choose an action.
  user_action = gets.chomp
  # Check what action the user chooses

  # If the user chooses Add
  #     Ask the user what they want to add
  #     Get from the user what gift they want to add
  #     Add the user choice to the list (array)

  # If the user chooses list
  #     Display the list
  #     Optional: If there is nothing in the list, tell the user the list is empty

  # If the user chooses Delete
  #     Show them the list to choose which item to delete
  #     Get the user's choice
  #     Delete item from the list
end

