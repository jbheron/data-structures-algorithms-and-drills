# Using the Ruby language, have the function ArithGeo(arr) take the array of numbers stored in arr and return the string "Arithmetic" if the sequence follows an arithmetic pattern or return "Geometric" if it follows a geometric pattern. If the sequence doesn't follow either pattern return -1. An arithmetic sequence is one where the difference between each of the numbers is consistent, where as in a geometric sequence, each term after the first is multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54]. Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same elements.

def ArithGeo(arr)
  arith_check = arr[1] - arr[0]
  geo_check = arr[1].div(arr[0])
  arith_count = 0
  geo_count = 0
  arr.to_a.each_with_index do | num, i|
    if arr[i + 1] == nil
    elsif arr[i + 1] - num == arith_check
      arith_count += 1
    end
    if arr[i + 1] == nil
    elsif arr[i + 1].div(num) == geo_check
      geo_count += 1
    end
  end
  p geo_count == arr.length - 1 ? "Geometric" : "Arithmetic"
end

ArithGeo([10,110,210,310,410,510])
ArithGeo([4, 8, 16, 32])
