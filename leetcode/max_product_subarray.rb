# Given an integer array nums, find a subarray
#  that has the largest product, and return the product.

# The test cases are generated so that the answer will fit in a 32-bit integer.

def max_sub(array)
  current_max = array[0]
  max_sub = []
  i = 1
  while i < array.length
    if array[i - 1] * array[i] > current_max
      max_sub << array[i - 1]
      max_sub << array[i]
      current_max = array[i - 1] * array[i]
    end
    i += 1
  end
  return max_sub
end

p max_sub([2, 3, -2, 4])
p max_sub([-2, 0, -1])
