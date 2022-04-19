require "json"

# filepath = "data/beers.json"

# serialized_beers = File.read(filepath)

# # p serialized_beers


beers_collection = JSON.parse(serialized_beers)

# p beers_collection

# p beers_collection["beers"][1]["type"]


beatles = { beatles: [
  {
    first_name: "John",
    last_name: "Lennon",
    instrument: "Guitar"
  },
  {
    first_name: "Paul",
    last_name: "McCartney",
    instrument: "Bass Guitar"
  },
  {
    "first_name" => "Johanna",
    last_name: "McCartney",
    instrument: "Bass Guitar"
  },
  # etc...
]}

filepath = "data/new_json_beatles.json"

File.open(filepath, "wb") do |file|
  # p file
  # p JSON.generate(beatles)
  file.write(JSON.generate(beatles))
end
