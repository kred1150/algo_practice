# Write a function that accepts an array of numbers and returns the product of all the numbers.

# Input: [1, 2, 3, 4]
# Output: 24

array = [1, 2, 3, 4]

def product(array)
  product = array[0]
  i = 1
  while i < array.length
    product = product * array[i]
    i += 1
  end
  return product
end

p product(array)
