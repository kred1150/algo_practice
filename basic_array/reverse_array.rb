# Given an array, write a function that returns an array that contains the original array’s values in reverse.

# Input: [1, 2, 3, 4, 5]
# Output: [5, 4, 3, 2, 1]

array = [1, 2, 3, 4, 5]

def reverse(array)
  i = array.length - 1
  reversed = []
  while i > -1
    reversed << array[i]
    i -= 1
  end
  return reversed
end

p reverse(array)
