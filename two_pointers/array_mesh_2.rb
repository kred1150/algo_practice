# Given ONE array of strings, return a new array that contains every combination of each string with every other string in the array.

# Input: ["a", "b", "c", "d"]
# Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

def mesh(array)
  i = 0
  meshed = []
  while i < array.length
    for letter in array
      if letter != array[i]
        meshed << array[i] + letter
      end
    end
    i += 1
  end
  return meshed
end

p mesh(["a", "b", "c", "d"])
