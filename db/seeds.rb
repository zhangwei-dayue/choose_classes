# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

99.times do |n|
  name  = Faker::Name.name
  Student.create!(name: name)
end

99.times do |n|
  name  = Faker::Name.name
  Teacher.create!(name: name)
end

20.times do |n|
  name  = Faker::Name.name
  Course.create!(name: name, teacher_id: n)
end

student = Student.first
courses  = Course.all
courses1 = courses[2..15]
courses1.each { |course| student.courses << course }
