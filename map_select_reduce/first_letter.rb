# Write a function that accepts an array of strings and returns an array with each string's first letter only.
# Example:
# Input: ["hello", "goodbye"]
# Output: ["h", "g"]

def first_letter(array)
  array.map { |string| string[0] }
end

p first_letter(["hello", "goodbye"])
