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
Car.create!(brand: 'Mercedes', model: 'C-Class', year: 'Mon, 29 May 2023', description: 'A luxury in its own right', user: user1)
Car.create!(brand: 'Lexus', model: 'RX', year: 'Mon, 29 May 2023', description: 'Utility mixed with luxury', user: user2)
Car.create!(brand: 'Porsche', model: 'Carrera', year: 'Mon, 29 May 2023', description: 'A very lovely car', user: user1)
Car.create!(brand: 'Mercedes', model: 'E-Class', year: 'Tues, 30 May 2023', description: 'Sit back, relax and enjoy', user: user2)
Car.create!(brand: 'Ferrari', model: 'Spider', year: 'Wed, 31 May 2023', description: 'Speed and utitlity mastered', user: user1)
Car.create!(brand: 'Lamborghini', model: 'Urus', year: 'Mon, 29 May 2023', description: 'A modern SUV', user: user2)
Car.create!(brand: 'BMW', model: 'i8', year: 'Wed, 31 May 2023', description: 'Futuristic Luxury', user: user1)
Car.create!(brand: 'Aston Martin', model: 'Vantage', year: 'Mon, 29 May 2023', description: "Even James Bond wouldn't let this one go", user: user3)
Car.create!(brand: 'Rolls Royce', model: 'Phantom', year: 'Mon, 29 May 2023', description: 'The true definition of luxury', user: user3)
Car.create!(brand: 'Bugatti', model: 'La Voiture Noire', year: 'Mon, 29 May 2023', description: "The world's most expensive car", user: user4)







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
