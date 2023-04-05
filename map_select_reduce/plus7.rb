# Write a function that accepts an array of numbers and returns an array with each number increased by 7.
# Example:
# Input: [1, 2, 3]
# Output: [8, 9, 10]

def add7(array)
  array.map { |number| number + 7 }
end

p add7([1, 2, 3])
