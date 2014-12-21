# Using the Ruby language, have the function ArithGeo(arr) take the array of numbers stored in arr and return the string "Arithmetic" if the sequence follows an arithmetic pattern or return "Geometric" if it follows a geometric pattern. If the sequence doesn't follow either pattern return -1. An arithmetic sequence is one where the difference between each of the numbers is consistent, where as in a geometric sequence, each term after the first is multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54]. Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same elements. 

def ArithGeo(arr)
  arr = arr.to_a
  true_arith = arr[1] - arr[0]
  true_geo = arr[1].div(arr[0])
  condition ||= - 1
  arith = 0
  geo = 0
  for i in 0..arr.length do 
    if arr[i + 1] == nil
    elsif arr[i + 1] - arr[i] == true_arith
      arith += 1
    end
    if arr[i + 1] == nil
    elsif arr[i + 1].div(arr[i]) == true_geo
      geo += 1
    end
  end
  if geo == arr.length - 1
    condition = "Geometric"
  elsif arith == arr.length - 1
    condition = "Arithmetic"
  end
  puts condition
  return condition 
         
end

# def ArithGeo(arr)
#   answer ||= -1
#   count = arr.length - 2
#   diff = arr[0] - arr[1]
#   div = arr[0].to_f / arr[1].to_f
#   diff_count = 0
#   div_count = 0
#   for i in 0..count do
#     if arr[i] - arr[i + 1] == diff
#       diff_count += 1
#     end
#     if arr[i].to_f / arr[i + 1].to_f == div
#       div_count += 1
#     end
#   end
#   if diff_count == count + 1
#     answer = "Arithmetic"
#   elsif div_count == count + 1
#     answer = "Geometric"
#   end
#   return answer
# end




ArithGeo([10,110,210,310,410,510])
ArithGeo([4, 8, 16, 32])

# 
# 
# def ArithGeo(arr)
#   diff = arr[1] - arr[0]
#   div = arr[1].div(arr[0])
#   test_count = arr.length - 2
#   arith = 0
#   geo = 0
#   for x in 1..test_count
#     if diff == arr[x + 1] - arr[x]
#       arith += 1
#     elsif div == arr[x + 1].div(arr[x]) 
#       geo += 1
#     end
#   end  
#   # puts "Test Count = #{test_count}"
#   # puts "Arith = #{arith}"
#   # puts "Geo = #{geo}"
#   #  
#   if arith == test_count
#       return "Arithmetic"
#   elsif geo == test_count
#       return "Geometric"
#   else
#       return "-1"
#   end
#   
#  
# end
# 
