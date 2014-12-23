# Using the Ruby language, have the function CaesarCipher(str,num) take the str parameter and perform a Caesar Cipher shift on it using the num parameter as the shifting number. A Caesar Cipher works by shifting each letter in the string N places down in the alphabet (in this case N will be num). Punctuation, spaces, and capitalization should remain intact. For example if the string is "Caesar Cipher" and num is 2 the output should be "Ecguct Ekrjgt".
require 'pp'
# 

def CaesarCipher(str,num)
  alpha = %w(a b c d e f g h i j k l m n o p q r s t u v w z y z)
  alpha_up  = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
  answer =[]
  for i in 0...str.length do
    if alpha.include?(str[i])
      number = alpha.index(str[i])
      number = (number + num) % 26
      answer << alpha[number]
    elsif alpha_up.include?(str[i])
      number = alpha_up.index(str[i])
      number = (number + num) % 26
      answer << alpha_up[number]
    else
      answer << str[i]
    end
  end
  pp answer.join
  return answer.join
end
   
CaesarCipher("abz !! zebrA", 7)

# def CaesarCipher(str, num)
#   a = str.split(//)
#   a.each do |x|
#     if ("a".."z").include?(x) 
#       
#       puts "#{x} yes"
#     elsif ("A".."Z").include?(x)
#       puts "#{x} YES"
#     else
#       puts "no"
#     end
#   end
#   
# end
CaesarCipher("Helloz", 4) # => Lippsd
CaesarCipher("abc", 0)
CaesarCipher("world!", 1)
# CaesarCipher("CoderByte", 2)
# CaesarCipher("no change", 0)
# CaesarCipher("byte-dash", 1)

































# def CaesarCipher(str, num)
#   key = str.split(//)
#   new = []
#   alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
#   caps = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
#   key.each do |letter|
#     if alphabet.include?(letter)
#       token = alphabet.index(letter) 
#       new << alphabet[(token + num) % 26]
#     elsif caps.include?(letter)
#       token = caps.index(letter)
#       new << caps[token + num]
#     else
#       new << letter
#     end
#   end
#   return new.join.to_s
# end

