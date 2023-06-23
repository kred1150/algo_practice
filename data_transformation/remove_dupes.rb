# Given the head of a sorted linked list, delete all duplicates such that each element appears only once. Return the linked list sorted as well.

def unique(array)
  counts = {}
  i = 0
  while i < array.length
    if counts[array[i]]
      counts[array[i]] += 1
    else
      counts[array[i]] = 1
    end
    i += 1
  end
  return counts.keys
end

p unique([3, 2, 4, 14, 8, 1, 2, 4, 8, 18])
