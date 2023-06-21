# Given a string, write a function that returns the longest palindrome in a given string. For example, racecar would retrun racecar, where jefferson would return effe.

def long_pal(string)
  long_pal = ""
  i = 0
  while i < string.length
    sub_i = 1
    while (i + sub_i) <= string.length
      sub_string = string.slice(i, sub_i)
      if (sub_string.length > long_pal.length) && (sub_string == sub_string.reverse)
        long_pal = sub_string
      end
      sub_i += 1
    end
    i += 1
  end
  return long_pal
end

p long_pal("racecar")
p long_pal("jefferson")
