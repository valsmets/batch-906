require_relative "christmas_list.rb"

gift_list = [
  # Create a hash for each gift
  { name: "socks", marked: false},
  { name: "Apple", marked: false}
]

# Welcome the user.
puts "🌲 Welcome to your christmast list 🌲"
# Display the actions.
# Give the user the option to quit the program and say goodbye.

user_action = ""

until user_action == "quit"
  puts "What do you want to do? | List | Add | Mark | Delete | or quit to exit"
  # The user will choose an action.
  user_action = gets.chomp.downcase
  # Check what action the user chooses

  # If the user chooses Add
  case user_action
  when "add"
    # Ask the user what they want to add
    puts "What do you want to add?"
    # Get from the user what gift they want to add
    gift = gets.chomp
    # Add the user choice to the list (array)
    gift_list << gift

    when "list"
      # If the user chooses list
      puts "Your wishlist:"
      # Display the list
      display_list(gift_list)

    when "delete"
      # If the user chooses Delete
      puts "What do you want to delete? (Enter a number)"
        # Show them the list to choose which item to delete
      display_list(gift_list)
      # Get the user's choice
      gift_to_delete = gets.chomp.to_i
      # Delete item from the list
      gift_list.delete_at(gift_to_delete - 1)
      when "Mark"
        # Ask the user which item to mark
        # get the index of the item to mark
        # Update the gift in ur list that is marked
        # list the items
    end
end

