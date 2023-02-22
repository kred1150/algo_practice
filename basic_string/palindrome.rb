# Given a string, write a function that returns true if it is a palindrome, and false if it is not. (A palindrome is a word that reads the same both forward and backward.)

# Input: “racecar”
# Output: true

# Input: “baloney”
# Output: false

string1 = "racecar"
string2 = "baloney"
string3 = "hannah"

def palindrome(string)
  og = string
  i = string.length - 1
  reverse = ""
  while i > -1
    reverse << string[i]
    i -= 1
  end
  if og == reverse
    return true
  else return false   end
end

p palindrome(string1)
p palindrome(string2)
p palindrome(string3)
