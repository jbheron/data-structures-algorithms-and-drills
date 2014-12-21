# Using the Ruby language, have the function ArithGeoII(arr) take the array of numbers stored in arr and return the string "Arithmetic" if the sequence follows an arithmetic pattern or return "Geometric" if it follows a geometric pattern. If the sequence doesn't follow either pattern return -1. An arithmetic sequence is one where the difference between each of the numbers is consistent, where as in a geometric sequence, each term after the first is multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54]. Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same elements. 




def ArithGeoII(arr)
  answer ||= -1
  count = arr.length - 2
  diff = arr[0] - arr[1]
  div = arr[0].to_f / arr[1].to_f
  diff_count = 0
  div_count = 0
  for i in 0..count do
    if arr[i] - arr[i + 1] == diff
      diff_count += 1
    end
    if arr[i].to_f / arr[i + 1].to_f == div
      div_count += 1
    end
  end
  if diff_count == count + 1
    answer = "Arithmetic"
  elsif div_count == count + 1
    answer = "Geometric"
  end
  return answer
end

def test
  puts ArithGeoII([-2,6,-18,48])
  puts ArithGeoII([-4,-9,-14,-19])
  puts ArithGeoII([-4,-1,2,5,8])  
  puts ArithGeoII([-16,8,-4,2,-1])  
end



























# 
# def ArithGeoII(arr)
#   dif = arr[1] - arr[0]
#   div = arr[1].div(arr[0])
#   test_count = arr.length - 2
#   arith = 0
#   geo = 0
# 
#   for x in 1..test_count
#     if dif == arr[x + 1] - arr[x]
#       arith += 1
#     elsif div == arr[x + 1].div(arr[x])
#       geo += 1
#     end
#   end  
# 
#   if arith == test_count
#       return "Arithmetic"
#   elsif geo == test_count
#       return "Geometric"
#   else
#       return "-1"
#   end
# end
#   puts "dif = #{dif}"
#   puts "div = #{div}"
#   puts "Test Count = #{test_count}"
#   puts "Arith = #{arith}"
#   puts "Geo = #{geo}"end


test()
