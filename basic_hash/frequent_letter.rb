# Given a string, find the most commonly occurring letter.

# Input: “peter piper picked a peck of pickled peppers”
# Output: “p”

def most_frequent(string)
  i = 0
  letter_counts = {}
  highest_count = 0
  most_frequent = ""
  while i < string.length
    if letter_counts[string[i]]
      letter_counts[string[i]] += 1
    else
      letter_counts[string[i]] = 1
    end
    if letter_counts[string[i]] > highest_count
      highest_count = letter_counts[string[i]]
      most_frequent = string[i]
    end
    i += 1
  end
  return most_frequent
end

p most_frequent("peter piper picked a peck of pickled peppers")
