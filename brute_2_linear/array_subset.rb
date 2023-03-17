# Given two arrays, determine whether one is a subset of the other. It is considered a subset if all the values in one array are contained within the other.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 2]
# Output: true

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 7]
# Output: false

def subset(array1, array2)
  first = {}
  i = 0
  if array1.length > array2.length
    while i < array1.length
      if first[array1[i]]
        first[array1[i]] += 0
      else
        first[array1[i]] = 0
      end
      i += 1
    end
    array2.each do |value|
      if first[value] != 0
        return false
      end
    end
    return true
  else
    while i < array2.length
      if first[array2[i]]
        first[array2[i]] += 1
      else
        first[array2[i]] = 0
      end
      i += 1
    end
    array1.each do |value|
      if first[value]
        ""
      else
        return false
      end
    end
    return true
  end
end

p subset([1, 2, 3, 4, 5, 6], [6, 3, 2, 8])
p subset([1, 2, 3], [6, 3, 2, 8])
p subset([1, 2, 3, 4, 5, 6], [6, 3, 2])
