# A given array has one pair of duplicate values. Return the first duplicate value.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [5, 2, 9, 7, 2, 6]
# Output: 2

def dupe(array)
  past = {}
  i = 0
  while i < array.length
    if past[array[i]]
      return array[i]
    else
      past[array[i]] = 1
    end
    i += 1
  end
end

p dupe([5, 2, 9, 7, 2, 6])
