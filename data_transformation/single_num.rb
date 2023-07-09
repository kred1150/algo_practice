# Given an integer array nums where every element appears three times except for one, which appears exactly once. Find the single element and return it.

# You must implement a solution with a linear runtime complexity and use only constant extra space.
# Input: nums = [0,1,0,1,0,1,99]
# Output: 99

def single(array)
  numbers = {}
  i = 0
  while i < array.length
    if numbers[array[i]]
      numbers[array[i]] += 1
    else
      numbers[array[i]] = 1
    end
    i += 1
  end
  return numbers.key(1)
end

p single([0, 1, 0, 1, 0, 1, 99])
