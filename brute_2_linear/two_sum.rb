# This is the same exercise as Two Sum I, but you must now solve it in linear time.

# Given an array of numbers, return a new array containing just two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.

# Input: [2, 5, 3, 1, 0, 7, 11]
# Output: [3, 7]

# Input: [1, 2, 3, 4, 5]
# Output: false (While 1, 2, 3, and 4 altogether add up to 10, we're seeking just one pair of numbers.)

def two_sum(array)
  target = 10
  check = {}
  i = 0
  while i < array.length
    diff = target - array[i]
    p check
    if check[array[i]]
      return [diff, array[i]]
    else
      check[diff] = i
    end
    i += 1
  end
  return false
end

p two_sum([2, 5, 3, 1, 0, 7, 11])
p two_sum([1, 2, 3, 4, 5])
