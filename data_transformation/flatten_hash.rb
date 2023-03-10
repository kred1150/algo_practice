# Given a hash, return a flat array containing all the hash’s keys and values.

# Input: {“a” => 1, “b” => 2, “c” => 3, “d” => 4}
# Output: [“a”, 1, “b”, 2, “c”, 3, “d”, 4]

def flatten(hash)
  array = []
  hash.each do |key, value|
    array << key
    array << value
  end
  return array
end

p flatten({ "a" => 1, "b" => 2, "c" => 3, "d" => 4 })
