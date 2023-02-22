# Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

#   Input: “hello, how are your porcupines today?”
#   Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”

string = "hello, how are your porcupines today?"

def alternate_caps(string)
  i = 1
  alt_cap = string[0]
  while i < string.length
    if i % 2 == 0
      alt_cap << string[i].downcase
    else
      alt_cap << string[i].upcase
    end
    i += 1
  end
  return alt_cap
end

p alternate_caps(string)
