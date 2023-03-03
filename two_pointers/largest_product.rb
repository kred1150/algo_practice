# Find the largest product of any two numbers within a given array.

# Input: [5, -2, 1, -9, -7, 2, 6]
# Output: 63 (-9 * -7)

def lp(array)
  large = 0
  i = 0
  while i < array.length
    for num in array
      product = array[i] * num
      if num == array[i]
        large = large
      elsif product > large
        large = product
      end
    end
    i += 1
  end
  return large
end

p lp([5, -2, 1, -9, -7, 2, 6])
