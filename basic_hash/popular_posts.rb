# Given an array of hashes that represent a list of social media posts, return a new array that only contains the posts that have at least 1000 likes.

# Input: [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
# ]

# Output: [
# {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# ]

def pop_post(array)
  i = 0
  popular = []
  while i < array.length
    if array[i][:likes] >= 1000
      popular << array[i]
    end
    i += 1
  end
  return popular
end

p pop_post([
    { title: "Me Eating Pizza", submitted_by: "Joelle P.", likes: 1549 },
    { title: "i never knew how cool i was until now", submitted_by: "Lyndon Johnson", likes: 3 },
    { title: "best selfie evar!!!", submitted_by: "Patti Q.", likes: 1092 },
    { title: "Mondays are the worst", submitted_by: "Aunty Em", likes: 644 },
  ])
