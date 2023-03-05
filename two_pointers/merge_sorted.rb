# Given two sorted arrays, merge the second array into the first array while ensuring that the first array remains sorted. Do not use any built-in sort methods.

# Input :
# A : [1, 5, 8]
# B : [6, 9]

# Modified A : [1, 5, 6, 8, 9]

def merge(array1, array2)
  i = 0
  sorted = []
  while i < array1.length
    sub_i = 0
    while sub_i < array2.length
      if array2[sub_i] < array1[i]
        sorted << array2[sub_i]
      elsif array2[sub_i] > array1[i]
        sorted << array1[i]
        i += 1
      end
      sub_i += 1
    end
  end
  return sorted
end

p merge([1, 5, 8], [6, 9])
