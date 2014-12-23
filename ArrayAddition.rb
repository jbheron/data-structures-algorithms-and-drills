# Using the Ruby language, have the function ArrayAddition(arr) take the array of numbers stored in arr and return the string true if any combination of numbers in the array can be added up to equal the largest number in the array, otherwise return the string false. For example: if arr contains [4, 6, 23, 10, 1, 3] the output should return true because 4 + 6 + 10 + 3 = 23. The array will not be empty, will not contain all the same elements, and may contain negative numbers. 
require 'pp'
# 
def ArrayAddition(arr)
  a = arr.sort
  max = a.slice!(-1)
  
  for i in 1..a.count do
    for x in a.combination(i).to_a  
      return true if x.inject{|acc, elem| acc + elem} == max
    end
  end
  return false
         
end


# def ArrayAddition(arr)
#   answer ||= false
#   a = arr.sort
#   max = a.slice!(-1)
#   for i in 0..a.length do
#     a.combination(i).each do |item|
#       sum = 0
#       item.each {|j| sum += j}
#       if sum == max
#         answer = true 
#       end
#     end
#   end
#   puts answer
#   return answer
# end


ArrayAddition([3,5,-1,8,199])
ArrayAddition([3,5,-1,8,12])


# def ArrayAddition(arr)
#   answer ||= "false"
#   max = arr.pop
#   combos = []
#   for i in 1..arr.length do
#     a = arr.combination(i).to_a
#     a.each do |x|
#         sum = 0
#       x.each do |item|
#         sum += item
#       end    
#       if sum == max
#         puts "T"
#         return true
#       end
#     end
#   end
#   puts "F"
#   return false
# end

