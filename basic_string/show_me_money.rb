# Given a string, write a function that returns true if the “$” character is contained within the string or false if it is not.

# Input: “i hate $ but i love money i know i know im crazy”
# Output: true

# Input: “abcdefghijklmnopqrstuvwxyz”
# Output: false

string1 = "i hate $ but i love money i know i know im crazy"
string2 = "abcdefghijklmnopqrstuvwxyz"

def show_money(string)
  i = 0
  while i < string.length
    if string[i] == "$"
      return true
    end
    i += 1
  end
  return false
end

p show_money(string1)
p show_money(string2)
