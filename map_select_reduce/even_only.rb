# Write a function that accepts an array of numbers and returns a new array with only the even numbers.
# Example:
# Input: [2, 4, 5, 1, 8, 9, 7]
# Output: [2, 4, 8]

def even_only(array)
  array.select { |num| num.even? }
end

p even_only([2, 4, 5, 1, 8, 9, 7])
