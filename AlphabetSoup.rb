# Using the Ruby language, have the function AlphabetSoup(str) take the str string parameter being passed and return the string with the letters in alphabetical order (ie. hello becomes ehllo). Assume numbers and punctuation symbols will not be included in the string.

def AlphabetSoup(str)
  puts str.split('').sort.join
  # puts a
end

AlphabetSoup("hello")
AlphabetSoup("argument")

