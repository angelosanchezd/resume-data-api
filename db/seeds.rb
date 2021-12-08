# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

student = Student.new(
"first_name": "Ismail",
"last_name": "Nicholson",
"email": "mike@example.com",
"phone_number": "555-555-5555",
"short_bio": "I'm me.",
"linkedin": "mitchel@linkedin.net",
"twitter": "mitchel@twitter.net",
"website": "mitchel@example.gov",
"online_resume": "Work.pdf",
"github": "mike@github.net",
"photo": "me.jpg"
)
student.save