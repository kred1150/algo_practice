# Given two arrays of strings, return a new string that contains every combination of a string from the first array concatenated with a string from the second array.

# Input: ["a", "b", "c"], ["d", "e", "f", "g"]
# Output: ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"]

array1 = ["a", "b", "c"]
array2 = ["d", "e", "f", "g"]

def mesh(array1, array2)
  i = 0
  meshed = []
  while i < array1.length
    for letter in array2
      meshed << array1[i] + letter
    end
    i += 1
  end
  return meshed
end

p mesh(array1, array2)
