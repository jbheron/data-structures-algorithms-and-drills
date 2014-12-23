# Using the Ruby language, have the function ABCheck(str) take the str parameter being passed and return the string true if the characters a and b are separated by exactly 3 places anywhere in the string at least once (ie. "lane borrowed" would result in true because there is exactly three characters between a and b). Otherwise return the string false.

def ABCheck(str)
  str.split(//).each_with_index do |char, i|
    return true if char == "a" && str[i + 4] == "b"
  end
  false
end



p ABCheck("lane borrowed")
p ABCheck("hckieiei")


# def ABCheck(str)
  # answer ||= false
  # a = str.split(//)
  # for i in 0...a.length do
    # if a[i] == "a"
      # if a[i + 4] == "b"
        # answer = true
      # end
    # end
  # end
  # return answer
# end
#

