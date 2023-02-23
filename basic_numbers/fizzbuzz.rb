# Write a function that prints out every number from 1 to N, with the following exceptions:

# If the number is divisible by 3, print out "FIZZ".
# If the number is divisible by 5, print out "BUZZ".
# If the number is divisible by both 3 and 5, print out "FIZZBUZZ".

def fizzbuzz(number)
  if number.remainder(3) == 0 && number.remainder(5) == 0
    p "FIZZBUZZ"
  elsif number.remainder(3) == 0
    p "FIZZ"
  elsif number.remainder(5) == 0
    p "BUZZ"
  end
end

fizzbuzz(4)
fizzbuzz(9)
fizzbuzz(10)
fizzbuzz(15)
fizzbuzz(25)
fizzbuzz(30)
