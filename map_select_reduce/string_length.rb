# Write a function that accepts an array of strings and returns an array with each string's length.
# Example:
# Input: ["hello", "goodbye"]
# Output: [5, 7]

def string_length(array)
  array.map { |string| string.length }
end

p string_length(["hello", "goodbye"])
