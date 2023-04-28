#  7. Use a nested loop with an array of numbers to compute an array with every combination of products from each number.
#     For example, [2, 8, 3] becomes [4, 16, 6, 16, 64, 24, 6, 24, 9].

def combo(array)
  combos = []
  i = 0
  while i < array.length
    sub_i = 0
    while sub_i < array.length
      combos << array[i] * array[sub_i]
      sub_i += 1
    end
    i += 1
  end
  return combos
end

p combo([2, 8, 3])
