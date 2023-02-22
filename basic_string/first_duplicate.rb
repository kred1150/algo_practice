# Given a string, write a function that returns the first occurence of two duplicate characters in a row, and return the duplicated character.

# Input: “abcdefghhijkkloooop”
# Output: “h”

string1 = "abcdefghhijkkloooop"
string2 = "daotmrhvqw"

def first_dupe(string)
  i = 1
  while i < string.length
    last_letter = string[i - 1]
    if string[i] == last_letter
      return string[i]
    end
    i += 1
  end
  return "no duplicate characters in row"
end

p first_dupe(string1)
p first_dupe(string2)
