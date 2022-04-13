# Create a method that takes in a sentence from the user
# and returns an acronym
def acronymize(sentence)
# split the word from the sentence
words_array = sentence.split
# take each first letters
letters = []
words_array.each do |word|
  letters << word[0]
end
# combine them together
# return our acronym
letters.join(".").upcase
end

# ask the user a sentence
puts "What is your sentence ?"
# get the sentence from the user
sentence = gets.chomp
puts acronymize(sentence)


