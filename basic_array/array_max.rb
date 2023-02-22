# Write a function that returns the greatest value from an array of numbers.

# Input: [5, 17, -4, 20, 12]
# Output: 20

array = [5, 17, -4, 20, 12]

def array_max(array)
  max = array[0]
  i = 0
  while i < array.length
    if array[i] > max
      max = array[i]
    end
    i += 1
  end
  return max
end

p array_max(array)
