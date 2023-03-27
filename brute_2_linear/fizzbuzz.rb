def fizzbuzz(number)
  i = 1
  while i <= number
    if i % 3 == 0 && i % 5 == 0
      p "FizzBuzz"
    elsif i % 5 == 0
      p "Buzz"
    elsif i % 3 == 0
      p "Fizz"
    else
      p i
    end
    i += 1
  end
end

p fizzbuzz(30)
