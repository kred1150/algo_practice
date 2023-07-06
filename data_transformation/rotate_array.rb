# Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.
# Input: nums = [1,2,3,4,5,6,7], k = 3
# Output: [5,6,7,1,2,3,4]

def rotate(nums, n)
  array = nums
  old_array = []
  n.times do
    i = 0
    old_array << array[array.length - 1]
    while i < array.length - 2
      old_array << array[i]
      i += 1
    end
  end
  return old_array
end

p rotate([1, 2, 3, 4, 5, 6, 7], 3)
