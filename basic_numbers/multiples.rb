# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def multsum(number)
  i = 0
  sum = 0
  while i < number
    if i.remainder(3) == 0
      sum = sum + i
    elsif i.remainder(5) == 0
      sum = sum + i
    end
    i += 1
  end
  return sum
end

p multsum(10)
p multsum(1000)
