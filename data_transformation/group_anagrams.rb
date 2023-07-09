# Given an array of strings strs, group the anagrams together. You can return the answer in any order.

# An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

# Input: strs = ["eat","tea","tan","ate","nat","bat"]
# Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

def group(array)
  words = {}
  i = 0
  while i < array.length
    if words[array[i].length]
      words[array[i].length] << array[i]
    else
      words[array[i].length] = [array[i]]
    end
    i += 1
  end
  i = 0
end

group(["eat", "tea", "tan", "ate", "nat", "bat"])
