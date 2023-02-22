# Write a function that returns the sum of all numbers in a given array.
# NOTE: Do not use any built-in language functions that do this automatically for you.

array = [1, 2, 3, 4]

def reduce_sum(array)
  sum = 0
  i = 0
  while i < array.length
    sum = sum + array[i]
    i += 1
  end
  return sum
end

p reduce_sum(array)
