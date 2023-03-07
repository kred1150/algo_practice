# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# Example 1:

# Input: ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
# Note:

# All given inputs are in lowercase letters a-z.

def common(array)
  i = 1
  array.sort_by { |x| x.length }
  least_common = array[0]
  while i < array.length
    common = 0
    while common < array[i].length && common < least_common.length && array[i][common] == least_common[common]
      common += 1
    end
    i += 1
  end
  if common == 0
    return ""
  else
    return least_common[0..common - 1]
  end
end

p common(["flower", "flow", "flight"])
