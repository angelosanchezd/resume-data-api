# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Capstone.create!([
  {student_id: 1, name: "Test", description: "Test", URL: "test", screenshot: "test"},
  {student_id: 1, name: "Test2", description: "Test2", URL: "test", screenshot: "test"},
  {student_id: 1, name: "Test3", description: "Test3", URL: "test", screenshot: "test"}
])