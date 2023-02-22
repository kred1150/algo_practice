# Write a function that returns the reverse of a given string.

# Input: “abcde”
# Output: “edcba”

string = "abcde"

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
