# Write a function that returns whether a given number is a prime number.

def prime(number)
  i = 2
  while i < number
    if number.remainder(i) == 0
      return "#{number} is not prime"
    end
    i += 1
  end
  return "#{number} is prime"
end

p prime(2)
p prime(252)
p prime(47)
p prime(39)
p prime(2128247)
