# Using the Ruby language, have the function BinaryConverter(str) return the decimal form of the binary value. For example: if 101 is passed return 5, or if 1000 is passed return 8. 

require 'pp'

def BinaryConverter(str)
  a = str.split(//)
  decimal = 0
  b = a.length
  for i in 1..b do
    decimal += a[-i].to_i * 2 ** (i - 1)
  end
  puts decimal
  return decimal
end


BinaryConverter("100101")
BinaryConverter("101")
BinaryConverter("1")
BinaryConverter("11")





# def BinaryConverter(str)
#   count = 0
#   position = str.length
#   for i in 1..position
#     adder = str[-i].to_i * (2 ** (i - 1 ))
#     count += adder 
#     # adder = 0
#   end
#   puts count
#   return count
# end

 
 