# Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.

def binary_search(array, n)
  middle = array[array.length / 2]

  if middle == n
    return true
  elsif middle < n
    i = middle
    j = array.length - 1
    middle = i + j / 2
  else
    i = 0
    j = middle
    middle = i + j / 2
  end
end
