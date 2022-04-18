require "json"

filepath = "data/beatles.json"

serialized_beatles = File.read(filepath)

# p serialized_beatles

# deserialized the file:
# Pass it form harddrive to the memory
json_file = JSON.parse(serialized_beatles)

# beatles is a ruby Hash
# p json_file

# TODO: Get the name of the second Beatle in the hash.
# p json_file["beatles"][1]["first_name"]

# TODO: Get the different kinds of instruments in from the band
# instruments = []
# json_file["beatles"].each do |beatle|
#   instruments << beatle["instrument"]
# end

# p instruments.uniq.sort

# TODOL Store your DB.

filepath = "data/906band.json"

band = { band_members: [
  {
    first_name: "Johanna",
    instrument: "Guitar"
  },
  {
    first_name: "Chimone",
    instrument: "Bass Guitar"
  },
  # etc...
]}

File.open(filepath, "wb") do |file|
  file.write(JSON.generate(band))
end
