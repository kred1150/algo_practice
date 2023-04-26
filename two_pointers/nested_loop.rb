# 10. Use a nested loop to convert an array of string arrays into a single string.
# #     For example, [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]] becomes "amanaplanacanalpanama".

array = [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]]

def loopy(array)
  letters = ""
  array.each do |word|
    word.each do |letter|
      letters << letter
    end
  end
  p letters
end

loopy(array)
