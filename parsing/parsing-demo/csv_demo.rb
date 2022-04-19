require "csv"

# filepath = "data/beatles.csv"

## #PARSING CSV

# beatles_first_names = []

# iteration = 0

# CSV.foreach(filepath, headers: :first_row) do |row|
#   # Here, row is an array of columns
#   # p row[0]
#   # if iteration > 0
#   #   beatles_first_names << row[0]
#   #   beatles_first_names
#   # end
#   # iteration += 1

#   # puts "#{row[0]} | #{row[1]} | #{row[2]}"

#   ## WITH OPTIONS
#   puts "#{row['First Name']} #{row['Last Name']} played #{row['Instrument']}"
# end

# p beatles_first_names

### STORING CSV

filepath = "data/new_beers.csv"


beers = [
  ["Heineke", "Lager", "Holland"],
  ["Guinness", "Stout", "Ireland"]
]

puts "Which beer?"
name = gets.chomp
puts "Which type?"
type = gets.chomp
puts "origin?"
origin = gets.chomp

beers << [name, type, origin]

CSV.open(filepath, "wb") do |csv|
  csv << ["Name", "Type", "Origin"]
  beers.each do |beer|
    csv << [beer[0], beer[1], beer[2]]
  end
end
