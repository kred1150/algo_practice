# given an array of k linked-lists lists, each linked-list is sorted in ascending order

# Input: lists = [[1,4,5],[1,3,4],[2,6]]
# Output: [1,1,2,3,4,4,5,6]

def merge(array)
  nums = []
  array.each do |list|
    list.each do |num|
      nums << num
    end
  end
  is_sorted = true
  while is_sorted
    is_sorted = false
    (nums.length - 1).times do |i|
      if nums[i] > nums[i + 1]
        nums[i], nums[i + 1] = nums[i + 1], nums[i]
        is_sorted = true
      end
    end
  end
  return nums
end

p merge([[1, 4, 5], [1, 3, 4], [2, 6]])
