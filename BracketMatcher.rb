# Using the Ruby language, have the function BracketMatcher(str) take the str parameter being passed and return 1 if the brackets are correctly matched and each one is accounted for. Otherwise return 0. For example: if str is "(hello (world))", then the output should be 1, but if str is "((hello (world))" the the output should be 0 because the brackets do not correctly match up. Only "(" and ")" will be used as brackets. If str contains no brackets return 1. 

def BracketMatcher(str)
  answer ||= 1
  a = str.split(//)
  lefty = 0
  righty = 0
  a.each do |x|
    if x == "("
      lefty += 1
    elsif x == ")"
      righty += 1
    end
  end
  if lefty != righty
    answer = 0
  end
  puts answer
  return answer
end

# BracketMatcher("(c(oder)) b(yte)")
# BracketMatcher("(coder)(byte))")
# BracketMatcher("none")

def LongestWord(sen)

  my_array = %w(sen)
  longest_word = ''
  my_array.each do |word|
  longest_word = word if longest_word.length < word.length
  
  end
puts longest_word
end