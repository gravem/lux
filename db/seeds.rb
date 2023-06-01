require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Car.destroy_all
User.destroy_all

puts 'Creating 4 test users.'
user1 = User.create!(first_name: 'Bruce', last_name: 'Wayne', email: 'bruce@wayne.com', password: '123456')
user2 = User.create!(first_name: 'John', last_name: 'Doe', email: 'user1@test.com', password: '123456')
user3 = User.create!(first_name: 'Jane', last_name: 'Doe', email: 'user2@test.com', password: '123456')
user4 = User.create!(first_name: 'Sarah', last_name: 'Connor', email: 'user3@test.com', password: '123456')

puts 'adding cars to user'

file_car1 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Mercedes-Benz_W213_E_350_4_matic_AMG_Line_white_%28cropped%29.jpg/560px-Mercedes-Benz_W213_E_350_4_matic_AMG_Line_white_%28cropped%29.jpg")
car1 = Car.create!(brand: 'Mercedes', model: 'E-Class', year: 'Mon, 29 May 2012', description: 'A luxury in its own right', user: user1)
car1.photo.attach(io: file_car1, filename: "merc-e.jpg", content_type: "image/jpg")
car1.save

file_car2 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/2021_Lexus_IS_300_AWD%2C_front_%282%29_3.26.21.jpg/560px-2021_Lexus_IS_300_AWD%2C_front_%282%29_3.26.21.jpg")
car2 = Car.create!(brand: 'Lexus', model: 'Lexus IS', year: 'Mon, 29 May 2016', description: 'Utility mixed with luxury', user: user2)
car2.photo.attach(io: file_car2, filename: "lexus.jpg", content_type: "image/jpg")
car2.save

# file_car3 = URI.open("")
# car3 = Car.create!(brand: 'Mercedes', model: 'C-Class', year: 'Mon, 29 May 2023', description: 'A luxury in its own right', user: user1)
# car3.photo.attach(io: file_car3, filename: "lamba.jpg", content_type: "image/jpg")
# car3.save

# file_car4 = URI.open("")
# car4 = Car.create!(brand: 'Lexus', model: 'RX', year: 'Mon, 29 May 2023', description: 'Utility mixed with luxury', user: user2)
# car4.photo.attach(io: file_car4, filename: "lamba.jpg", content_type: "image/jpg")
# car4.save

file_car5 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/2020_Porsche_Taycan_4S_79kWh_Front.jpg/560px-2020_Porsche_Taycan_4S_79kWh_Front.jpg")
car5 = Car.create!(brand: 'Porsche', model: 'Taycan', year: 'Mon, 29 May 2022', description: 'A very lovely car', user: user1)
car5.photo.attach(io: file_car5, filename: "porsche.jpg", content_type: "image/jpg")
car5.save

file_car6 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Mercedes-Benz_W463_G_350_BlueTEC_01.jpg/560px-Mercedes-Benz_W463_G_350_BlueTEC_01.jpg")
car6 = Car.create!(brand: 'Mercedes', model: 'G-Class', year: 'Tues, 30 May 2019', description: 'Sit back, relax and enjoy', user: user2)
car6.photo.attach(io: file_car6, filename: "merc-g.jpg", content_type: "image/jpg")
car6.save

file_car7 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/2017_Ferrari_488_GTB_Automatic_3.9.jpg/560px-2017_Ferrari_488_GTB_Automatic_3.9.jpg")
car7 = Car.create!(brand: 'Ferrari', model: '488', year: 'Wed, 31 May 2017', description: 'Speed and utitlity mastered', user: user1)
car7.photo.attach(io: file_car7, filename: "ferrari.jpg", content_type: "image/jpg")
car7.save

file_car8 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Lamborghini_Aventador_LP700-4_Orange.jpg/560px-Lamborghini_Aventador_LP700-4_Orange.jpg")
car8 = Car.create!(brand: 'Lamborghini', model: 'Aventador', year: 'Mon, 29 May 2014', description: 'A modern SUV', user: user2)
car8.photo.attach(io: file_car8, filename: "lamba.jpg", content_type: "image/jpg")
car8.save

file_car9 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/BMW_i8_Concept_IAA.jpg/440px-BMW_i8_Concept_IAA.jpg")
car9 = Car.create!(brand: 'BMW', model: 'i8', year: 'Wed, 31 May 2012', description: 'Futuristic Luxury', user: user1)
car9.photo.attach(io: file_car9, filename: "bmw.jpg", content_type: "image/jpg")
car9.save

file_car10 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/2017_Aston_Martin_V12_Vantage_S%2C_Jet_Black%2C_front_left.jpg/2560px-2017_Aston_Martin_V12_Vantage_S%2C_Jet_Black%2C_front_left.jpg")
car10 = Car.create!(brand: 'Aston Martin', model: 'Vantage', year: 'Mon, 29 May 2017', description: "Even James Bond wouldn't let this one go", user: user3)
car10.photo.attach(io: file_car10, filename: "aston.jpg", content_type: "image/jpg")
car10.save

file_car11 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/4rrpdh.jpg/560px-4rrpdh.jpg")
car11 = Car.create!(brand: 'Rolls Royce', model: 'Phantom', year: 'Mon, 29 May 2008', description: 'The true definition of luxury', user: user3)
car11.photo.attach(io: file_car11, filename: "rolls.jpg", content_type: "image/jpg")
car11.save

file_car12 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Veyron_SS.jpg/560px-Veyron_SS.jpg")
car12 = Car.create!(brand: 'Bugatti', model: 'Veyron', year: 'Mon, 29 May 2007', description: "The world's most expensive car", user: user4)
car12.photo.attach(io: file_car12, filename: "bugatti.jpg", content_type: "image/jpg")
car12.save

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
