# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Car.destroy_all

puts 'Creating 4 test users.'
user1 = User.create!(first_name: 'Bruce', last_name: 'Wayne', email: 'bruce@wayne.com', password: '123456')
user2 = User.create!(first_name: 'John', last_name: 'Doe', email: 'user1@test.com', password: '123456')
user3 = User.create!(first_name: 'Jane', last_name: 'Doe', email: 'user2@test.com', password: '123456')
user4 = User.create!(first_name: 'Sarah', last_name: 'Connor', email: 'user3@test.com', password: '123456')

puts 'adding cars to user'
Car.create!(brand: 'Mercedes', model: '', year: 'Mon, 29 May 2023', description: '', user: user1)
Car.create!(brand: 'Lexus', model: '', year: 'Mon, 29 May 2023', description: '', user: user2)

# usernumber = 1
# 10.times do
#   user = User.create!(
#     email: "user#{usernumber}@test.com",
#     password: "123456",
#     first_name: "Name#{usernumber}",
#     last_name: "Name"
#   )
#   usernumber += 1
# end
puts 'Finished!'
