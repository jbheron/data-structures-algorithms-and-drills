# INPUT SAMPLE:

# Your program should accept a file as its first argument. The file contains multiple separated lines; each line contains 3 numbers that are space delimited. The first number is the first divider (X), the second number is the second divider (Y), and the third number is how far you should count (N). You may assume that the input file is formatted correctly and the numbers are valid positive integers.

# For example:



#1-- 3 5 10
#2-- 2 7 15
# OUTPUT SAMPLE:

# Print out the series 1 through N replacing numbers divisible by X with “F”, numbers divisible by Y with “B” and numbers divisible by both with “FB”. Since the input file contains multiple sets of values, your output should print out one line per set. Ensure that there are no trailing empty spaces in each line you print.


#1-- 1 2 F 4 B F 7 8 F B
#2-- 1 F 3 F 5 F B F 9 F 11 F 13 FB 15

def fizz_buzzer(file)
  array = [[3,5,10]]
  file.open.each do |line|
    arguments = line.split(" ")
    fizz = arguments[0]
    buzz = arguments[1]
    fizz_buzz = fizz * buzz
    count = arguments[2]
    current = 1

    count.times do
      if current % fizz_buzz == 0
        print "FB"
      elsif current % buzz == 0
        print "B"
      elsif current % fizz == 0
        print "F"
      else
        print "#{current}"
      end

      if current < count
        print " "
      else
        puts ""
      end
      current += 1
    end
  end
end

