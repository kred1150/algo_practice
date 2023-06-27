# Given an array nums with n objects colored red, white, or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white, and blue.

# We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively.

# You must solve this problem without using the library's sort function.

def sortcolors(array)
  i = 0
  color_numbers = []
  while i < array.length
    if array[i] == "red"
      color_numbers << 0
    elsif array[i] == "white"
      color_numbers << 1
    else
      color_numbers << 2
    end
    i += 1
  end
  is_sorted = true
  while is_sorted
    is_sorted = false
    (color_numbers.length - 1).times do |i|
      if color_numbers[i] > color_numbers[i + 1]
        color_numbers[i], color_numbers[i + 1] = color_numbers[i + 1], color_numbers[i]
        is_sorted = true
      end
    end
  end
  return color_numbers
end

p sortcolors(["blue", "red", "blue", "white", "white", "red"])
