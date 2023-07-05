# You are climbing a staircase. It takes n steps to reach the top.

# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
def climb_stairs(n)
  first = 0
  second = 1
  n.times do
    first, second = second, (first + second)
  end
  return second
end

p climb_stairs(2)
p climb_stairs(3)
p climb_stairs(5)
p climb_stairs(45)
