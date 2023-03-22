# A given string contains all the letters from the alphabet except for one. Return the missing letter.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: “The quick brown box jumps over a lazy dog”
# Output: “f”

def missing(string)
  letters = {
    "a" => 0,
    "b" => 0,
    "c" => 0,
    "d" => 0,
    "e" => 0,
    "f" => 0,
    "g" => 0,
    "h" => 0,
    "i" => 0,
    "j" => 0,
    "k" => 0,
    "l" => 0,
    "m" => 0,
    "n" => 0,
    "o" => 0,
    "p" => 0,
    "q" => 0,
    "r" => 0,
    "s" => 0,
    "t" => 0,
    "u" => 0,
    "v" => 0,
    "w" => 0,
    "x" => 0,
    "y" => 0,
    "z" => 0,
  }
  i = 0
  while i < string.length
    if string[i] != " "
      letters[string[i].downcase] += 1
      i += 1
    else
      i += 1
    end
  end
  return letters.key(0)
end

p missing("The quick brown box jumps over a lazy dog")
