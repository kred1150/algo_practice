# calculate the number of numerical digits in a string, and return the numbers in an array

def numbies(string)
  numbers = []
  count_num = 0
  i = 0
  while i < string.length
    if string[i] == "0"
      count_num += 1
      numbers << 0
    elsif string[i].to_i != 0
      count_num += 1
      numbers << string[i].to_i
    end
    i += 1
  end
  return count_num, numbers
end

p numbies("u43rh308rg37rfhq3")
