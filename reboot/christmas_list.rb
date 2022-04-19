def display_list(gift_list)
  if gift_list.empty?
    # Optional: If there is nothing in the list, tell the user the list is empty
    puts "You have nothing in your list."
  else
    gift_list.each_with_index do |gift, index|
      puts "#{index + 1} - #{gift.capitalize}"
    end
  end
end
