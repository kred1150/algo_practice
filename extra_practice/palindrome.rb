# make a function that returns true or false based on wether the string is a palindrome

def palindrome(string)
  newstring = ""
  i = 0
  while i < string.length
    newstring = string[i] + newstring
    i += 1
  end
  if string == newstring
    return true
  else
    return false
  end
end

p palindrome("racecar")
p palindrome("hello")
