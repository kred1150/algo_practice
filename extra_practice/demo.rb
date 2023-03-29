data = {
  semester: "Spring 2020",
  courses: [
    {
      title: "Math 101",
      teacher: "Dr. Qwerty",
      times: [
        "Monday, 9 AM",
        "Wednesday, 9 AM",
      ],
      books: [
        {
          title: "Addition for Dummies",
          author: "Eduardo Plusman",
          isbn: 183471283427,
          pages: 687,
        },
        {
          title: "Subtraction for Dummies",
          author: "Yolanda Minus",
          isbn: 183128472243,
          pages: 1062,
        },
        {
          title: "How To Use a Pencil",
          author: "Eduardo Plusman",
          isbn: 123433283555,
          pages: 44,
        },
      ],
      students: [
        {
          firstname: "Shana",
          lastname: "Cohen",
          id: 1000021,
          grade: "A",
        },
        {
          firstname: "Sarah",
          lastname: "Smith",
          id: 1000052,
          grade: "B+",
        },
        {
          firstname: "Grace",
          lastname: "Hopper",
          id: 1000061,
          grade: "A-",
        },
        {
          firstname: "Ada",
          lastname: "Lovelace",
          id: 1000001,
          grade: "A",
        },
        {
          firstname: "Lisa",
          lastname: "Tucker",
          id: 1000036,
          grade: "B+",
        },
        {
          firstname: "Rena",
          lastname: "Cohen",
          id: 1000044,
          grade: "A-",
        },
        {
          firstname: "Dina",
          lastname: "Brown",
          id: 1000102,
          grade: "A",
        },
      ],
    },
    {
      title: "Computers 101",
      teacher: "Bill Gates",
      times: [
        "Sunday, 9:30 AM",
      ],
      books: [
        {
          title: "Plug It In",
          author: "Steve Jobs",
          isbn: 987654321234,
          pages: 12,
        },
        {
          title: "Turn It On",
          author: "Steve Jobs",
          isbn: 123456789098,
          pages: 1062,
        },
        {
          title: "How To Type",
          author: "Eduardo Plusman",
          isbn: 3214871487247,
          pages: 103,
        },
      ],
      students: [
        {
          firstname: "Shana",
          lastname: "Cohen",
          id: 1000021,
          grade: "A",
        },
        {
          firstname: "Leah",
          lastname: "Boxer",
          id: 1000233,
          grade: "B",
        },
        {
          firstname: "Hanna",
          lastname: "Sacks",
          id: 1000360,
          grade: "A",
        },
        {
          firstname: "Ada",
          lastname: "Lovelace",
          id: 1000001,
          grade: "A",
        },
        {
          firstname: "Sarah",
          lastname: "Wald",
          id: 1000030,
          grade: "A-",
        },
        {
          firstname: "Fiona",
          lastname: "Weiss",
          id: 1000888,
          grade: "B+",
        },
        {
          firstname: "Dina",
          lastname: "Brown",
          id: 1000102,
          grade: "A-",
        },
      ],
    },
    {
      title: "World History",
      teacher: "Mr. Atlas",
      times: [
        "Tuesday, 7 PM",
        "Thursday, 7 PM",
      ],
      books: [
        {
          title: "World History",
          author: "John Atlas",
          isbn: 6666666248321,
          pages: 12345,
        },
      ],
      students: [
        {
          firstname: "Dina",
          lastname: "Brown",
          id: 1000102,
          grade: "A-",
        },
        {
          firstname: "Sarah",
          lastname: "Smith",
          id: 1000052,
          grade: "B+",
        },
        {
          firstname: "Leah",
          lastname: "Boxer",
          id: 1000233,
          grade: "B+",
        },
        {
          firstname: "Ada",
          lastname: "Lovelace",
          id: 1000001,
          grade: "A-",
        },
        {
          firstname: "Fiona",
          lastname: "Weiss",
          id: 1000888,
          grade: "A-",
        },
        {
          firstname: "Rena",
          lastname: "Cohen",
          id: 1000044,
          grade: "A",
        },
        {
          firstname: "Shana",
          lastname: "Cohen",
          id: 1000021,
          grade: "A",
        },
      ],
    },
    {
      title: "Chemistry",
      teacher: "Dr. Nye",
      times: [
        "Tuesday, 2 PM",
        "Friday, 10 AM",
      ],
      books: [],
      students: [
        {
          firstname: "Sarah",
          lastname: "Smith",
          id: 1000052,
          grade: "B",
        },
        {
          firstname: "Grace",
          lastname: "Hopper",
          id: 1000061,
          grade: "A",
        },
        {
          firstname: "Shana",
          lastname: "Cohen",
          id: 1000021,
          grade: "A",
        },
        {
          firstname: "Ada",
          lastname: "Lovelace",
          id: 1000001,
          grade: "A",
        },
        {
          firstname: "Emily",
          lastname: "Post",
          id: 1000999,
          grade: "B",
        },
        {
          firstname: "Rena",
          lastname: "Cohen",
          id: 1000044,
          grade: "A-",
        },
      ],
    },
  ],
}

# // Demo: Print out the page count of the book "World History"
p data[:courses][2][:books][0][:pages]
# // Demo: Use a loop to print out page count of Math 101 books
data[:courses][0][:books].each do |book|
  p book[:pages]
end
# // Demo: Use a loop to print out all books authored by Eduardo Plusman
i = 0
while i < data[:courses].length
  data[:courses][i][:books].each do |book|
    if book[:author] == "Eduardo Plusman"
      p book[:title]
    end
  end
  i += 1
end

# // "Simple" Exercises:
# // 1. Print out the name of the teacher of Computers 101
p data[:courses][1][:teacher]
# // 2. Print out Grace Hopper's id
p data[:courses][0][:students][2][:id]
# // 3. Print out the last name of Emily who takes Chemistry
p data[:courses][3][:students][4][:lastname]
# // 4. Print out the grade that Sarah Wald received in Computers 101
p data[:courses][1][:students][4][:grade]

# // "Loop" Exercises:
p "---------------------------------------"
# // 5. Use a loop to print out all of the times that Chemistry takes place
data[:courses][3][:times].each do |time|
  p time
end
# // 6. Use a loop to print out all of the course titles
data[:courses].each do |course|
  p course[:title]
end
# // 7. Use a loop to print out all of the full names of students taking World History (an example full name is: "Rena Cohen")
data[:courses][2][:students].each do |student|
  p student[:firstname] + " " + student[:lastname]
end
# // 8. Use a loop to print out all of the people who received an "A" in Math 101
data[:courses][0][:students].each do |student|
  if student[:grade] == "A"
    p student[:firstname] + " " + student[:lastname]
  end
end
# // 9. Use a loop to print out all of Shana Cohen's grades
i = 0
while i < data[:courses].length
  data[:courses][i][:students].each do |student|
    if student[:firstname] + " " + student[:lastname] == "Shana Cohen"
      p student[:firstname] + " " + student[:lastname] + ": " + student[:grade]
    end
  end
  i += 1
end
