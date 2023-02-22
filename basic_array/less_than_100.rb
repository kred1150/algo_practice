# Given an array of numbers, write a function that returns a new array that contains all numbers from the original array that are less than 100.

# Input: [99, 101, 88, 4, 2000, 50]
# Output: [99, 88, 4, 50]

array = [99, 101, 88, 4, 2000, 50]

def less_than(array)
  num = 100
  less_num = []
  i = 0
  while i < array.length
    if array[i] < num
      less_num << array[i]
    end
    i += 1
  end
  return less_num
end

p less_than(array)
