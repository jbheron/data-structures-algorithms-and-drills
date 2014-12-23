# Using the Ruby language, have the function CheckNums(num1,num2) take both parameters being passed and return the string true if num2 is greater than num1, otherwise return the string false. If the parameter values are equal to each other then return the string -1. 

def CheckNums(num1,num2)
  if num1 < num2
    return true
  elsif num1 > num2
    return false
  else
    return "-1"
  end
end

CheckNums(1,2)
CheckNums(3,2)
CheckNums(2,2)   
   