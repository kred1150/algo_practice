# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def large_pal
  x = 999
  y = 999
  pal = 0
  while x > 99
    product = x * y
    if product.to_s == product.to_s.reverse
      pal = product
      return pal
    end
    x -= 1
    product = x * y
    if product.to_s == product.to_s.reverse
      pal = product
      return pal
    end
    y -= 1
  end
  return pal
end

p large_pal
