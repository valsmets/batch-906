# ---- Greet the user depending on the time ----

# Ask the user for the time in hours
puts "What time is it? (hours)"
# Greet them according to the time
time = gets.chomp.to_i

if time < 12
  puts "Good morning"
elsif time > 18 && time < 24
  puts "Good evening"
elsif time >= 12 && time < 18
  puts "Good afternoon"
else
 puts "wrong input"
end

