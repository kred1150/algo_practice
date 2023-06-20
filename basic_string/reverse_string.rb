# Write a Ruby function to reverse a string. Demonstrate it with the string “Madam, I’m Adam”.

string = "Madam, I’m Adam"

def reverse(string)
  i = string.length - 1
  reversed = ""
  while i > -1
    reversed << string[i]
    i -= 1
  end
  return reversed
end

p reverse(string)
