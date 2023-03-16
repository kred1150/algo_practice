# Given two arrays, return a new array that contains the intersection of the two arrays. The intersection means the values that are contained in both of the arrays. Do not use the "&", or any built-in intersection methods.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [1, 2, 3, 4, 5], [1, 3, 5, 7, 9]
# Output: [1, 3, 5]

def intersect(array1, array2)
  all_numbers = {}
  intersection = []
  i = 0
  while i < array1.length
    if all_numbers[array1[i]]
      all_numbers[array1[i]] += 1
    else
      all_numbers[array1[i]] = 0
    end
    i += 1
  end
  i = 0
  while i < array2.length
    if all_numbers[array2[i]]
      intersection << array2[i]
    end
    i += 1
  end
  p intersection
end

intersect([1, 2, 3, 4, 5], [1, 3, 5, 7, 9])
