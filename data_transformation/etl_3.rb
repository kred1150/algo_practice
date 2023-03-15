# Given an array of Youtube videos, for example:

# [
# {title: 'How to Make Wood', author_id: 4, views: 6},
# {title: 'How to Seem Perfect', author_id: 4, views: 111},
# {title: 'Review of the New "Unbreakable Mug"', author_id: 2, views: 202},
# {title: 'Why Pigs Stink', author_id: 1, views: 12}
# ]

# and an array of authors, for example:

# [
# {id: 1, first_name: 'Jazz', last_name: 'Callahan'},
# {id: 2, first_name: 'Ichabod', last_name: 'Loadbearer'},
# {id: 3, first_name: 'Saron', last_name: 'Kim'},
# {id: 4, first_name: 'Teena', last_name: 'Burgess'},
# ]

# Return a new array of videos in the following format, and only include videos that have at least 100 views:

# [
# {title: 'How to Seem Perfect', views: 111, author_name: 'Teena Burgess' }
# {title: 'Review of the New "Unbreakable Mug"', views: 202, author_name: 'Ichabod Loadbearer' },
# ]

def highviews(videos, creators)
  high = []
  i = 0
  while i < videos.length
    if videos[i][:views] >= 100
      high << videos[i]
    end
    i += 1
  end
  i = 0
  while i < high.length
    sub_i = 0
    while sub_i < creators.length
      if high[i][:author_id] == creators[sub_i][:id]
        high[i][:author_id] = creators[sub_i][:first_name] + " " + creators[sub_i][:last_name]
      end
      sub_i += 1
    end
    i += 1
  end
  high.each do |hash|
    key_map = { title: "title", views: "views", author_id: "author_name" }
    hash.transform_keys! { |k| key_map[k] }
  end
  p high
end

highviews([
  { title: "How to Make Wood", author_id: 4, views: 6 },
  { title: "How to Seem Perfect", author_id: 4, views: 111 },
  { title: 'Review of the New "Unbreakable Mug"', author_id: 2, views: 202 },
  { title: "Why Pigs Stink", author_id: 1, views: 12 },
],
          [
  { id: 1, first_name: "Jazz", last_name: "Callahan" },
  { id: 2, first_name: "Ichabod", last_name: "Loadbearer" },
  { id: 3, first_name: "Saron", last_name: "Kim" },
  { id: 4, first_name: "Teena", last_name: "Burgess" },
])
