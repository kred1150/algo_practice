# Given a string of words, write a function that returns a new string that contains the words in reverse order.

# Input: “popcorn is so cool isn’t it yeah i thought so”
# Output: “so thought i yeah it isn’t cool so is popcorn”

string = "popcorn is so cool isn’t it yeah i thought so"

def rev_words(string)
  i = 0
  words = []
  word = ""
  while i < string.length + 1
    if i == string.length
      words << word
      word = ""
    elsif string[i] == " "
      words << word
      word = ""
    elsif string[i] != " "
      word << string[i]
    end
    i += 1
  end
  sub_i = words.length
  reversed_words = []
  while sub_i > -2
    reversed_words << words[sub_i]
    sub_i -= 1
  end

  rev = reversed_words.join(" ")
  len = rev.length
  rev = rev.slice(1..len)
  return rev
end

p rev_words(string)
