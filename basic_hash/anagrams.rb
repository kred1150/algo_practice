# Given two strings, return true if they are anagrams of each other, and false if they are not. An anagram is a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.

# Do not use any built-in sort methods.

# Input: “silent”, “listen”
# Output: true

# Input: “frog”, “bear”
# Output: false

def anagram(string1, string2)
  # if strings arent same length they arent anagrams
  if string1.length != string2.length
    return false
  end
  # break each letter in the strings into an array
  i = 0
  letters1 = []
  letters2 = []
  while i < string1.length
    letters1 << string1[i].upcase
    letters2 << string2[i].upcase
    i += 1
  end
  # sort the first array of strings in alphabetical order
  i = 0
  while i < letters1.length
    sub_i = i + 1
    while sub_i < letters1.length
      if letters1[i] < letters1[sub_i]
        letters1[i], letters1[sub_i] = letters1[sub_i], letters1[i]
      end
      sub_i += 1
    end
    i += 1
  end
  # sort the second array of strings in alphabetical order
  i = 0
  while i < letters2.length
    sub_i = i + 1
    while sub_i < letters2.length
      if letters2[i] < letters2[sub_i]
        letters2[i], letters2[sub_i] = letters2[sub_i], letters2[i]
      end
      sub_i += 1
    end
    i += 1
  end
  # check if sorted arrays are equal
  if letters1 == letters2
    return true
  else
    return false
  end
end

p anagram("silent", "listen")
p anagram("frog", "bear")
p anagram("silent", "listens")
