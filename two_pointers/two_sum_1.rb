# Given an array of numbers, return a new array containing just two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.

# Input: [2, 5, 3, 1, 0, 7, 11]
# Output: [3, 7]

# Input: [1, 2, 3, 4, 5]
# Output: false (While 1, 2, 3, and 4 altogether add up to 10, we're seeking just one pair of numbers.)

def two_sum(array)
  i = 1
  target = 10
  past = []
  pair = []
  while i < array.length
    difference = target - array[i]
    if past.include?(difference)
      pair << array[i]
      pair << difference
      return pair
    else
      past << array[i]
    end
    i += 1
  end
  return false
end

p two_sum([2, 5, 3, 1, 0, 7, 11])
p two_sum([1, 2, 3, 4, 5])
