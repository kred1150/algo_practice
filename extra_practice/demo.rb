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
# // Demo: Use a loop to print out all books authored by Eduardo Plusman
