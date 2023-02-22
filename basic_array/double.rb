# Given an array of numbers, write a function that returns a new array whose values are the original array’s value doubled.

# Input: [4, 2, 5, 99, -4]
# Output: [8, 4, 10, 198, -8]

array = [4, 2, 5, 99, -4]

def double(array)
  double = []
  i = 0
  while i < array.length
    double << array[i] * 2
    i += 1
  end
  return double
end

p double(array)
