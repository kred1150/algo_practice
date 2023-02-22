# Given two strings of equal length, write a function that returns the number of characters that are different between the two strings.

# Input: "ABCDEFG", "ABCXEOG"
# Output: 2

# Explanation: While the A, B, C, E, and G are in the same place for both strings, they have different characters in the other spaces. Since there are 2 such spaces that are different (the D and F in the first string), we return 2.

# Input: "ABCDEFG", "ABCDEFG",
# Output: 0

string1 = "ABCDEFG"
string2 = "ABCXEOG"
string3 = "ABCDEFG"

def hammer(string1, string2)
  if string1.length != string2.length
    return "These strings are not equal length."
  end
  i = 0
  different = 0
  while i < string1.length
    if string1[i] != string2[i]
      different += 1
    end
    i += 1
  end
  return different
end

p hammer(string1, string2)
p hammer(string1, string3)
p hammer(string2, string3)
