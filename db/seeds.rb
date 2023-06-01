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

file_car1 = URI.open("https://media.autoexpress.co.uk/image/private/s--hCniKi2M--/v1682436220/evo/2023/04/2023%20Mercedes%20Eclass.jpg")
car1 = Car.create!(brand: 'Mercedes', model: 'E-Class', year: 'Mon, 29 May 2012', description: 'A luxury in its own right', user: user1)
car1.photo.attach(io: file_car1, filename: "merc-e.jpg", content_type: "image/jpg")
car1.save

file_car2 = URI.open("https://www.topgear.com/sites/default/files/2022/07/1_3.jpg")
car2 = Car.create!(brand: 'Lexus', model: 'IS', year: 'Mon, 29 May 2016', description: 'Utility mixed with luxury', user: user2)
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

file_car5 = URI.open("https://ev-database.org/img/auto/Porsche_Taycan_Turbo_S/Porsche_Taycan_Turbo_S-01@2x.jpg")
car5 = Car.create!(brand: 'Porsche', model: 'Taycan', year: 'Mon, 29 May 2022', description: 'A very very lovely car', user: user1)
car5.photo.attach(io: file_car5, filename: "porsche.jpg", content_type: "image/jpg")
car5.save

file_car6 = URI.open("https://images.prismic.io/carwow/d7d113bc-6570-4db2-aa5c-0fbbecb43e90_2021+Mercedes+G-Class+front+quarter+moving+2.jpg")
car6 = Car.create!(brand: 'Mercedes', model: 'G-Class', year: 'Tues, 30 May 2019', description: 'Sit back, relax and enjoy', user: user2)
car6.photo.attach(io: file_car6, filename: "merc-g.jpg", content_type: "image/jpg")
car6.save

file_car7 = URI.open("https://images.caradisiac.com/logos-ref/modele/modele--ferrari-488-gtb/S0-modele--ferrari-488-gtb.jpg")
car7 = Car.create!(brand: 'Ferrari', model: '488', year: 'Wed, 31 May 2017', description: 'Speed and utitlity mastered', user: user1)
car7.photo.attach(io: file_car7, filename: "ferrari.jpg", content_type: "image/jpg")
car7.save

file_car8 = URI.open("https://hips.hearstapps.com/hmg-prod/images/autentica-001-1675636392.jpg?resize=980:*")
car8 = Car.create!(brand: 'Lamborghini', model: 'Aventador', year: 'Mon, 29 May 2014', description: 'A modern supercar', user: user2)
car8.photo.attach(io: file_car8, filename: "lamba.jpg", content_type: "image/jpg")
car8.save

file_car9 = URI.open("https://www.wardsauto.com/sites/wardsauto.com/files/styles/article_featured_retina/public/uploads/2014/05/bmw-i8-main.jpg?itok=NNgOqJqN")
car9 = Car.create!(brand: 'BMW', model: 'i8', year: 'Wed, 31 May 2012', description: 'Futuristic luxury just for you', user: user1)
car9.photo.attach(io: file_car9, filename: "bmw.jpg", content_type: "image/jpg")
car9.save

file_car10 = URI.open("https://paultan.org/image/2023/03/Aston-Martin-Vantage-F1-Edition-Malaysia-launch-1.jpg")
car10 = Car.create!(brand: 'Aston Martin', model: 'Vantage', year: 'Mon, 29 May 2017', description: "Even James Bond wouldn't let this one go", user: user3)
car10.photo.attach(io: file_car10, filename: "aston.jpg", content_type: "image/jpg")
car10.save

file_car11 = URI.open("https://www.topgear.com/sites/default/files/cars-car/image/2017/10/_jl58227.jpg")
car11 = Car.create!(brand: 'Rolls Royce', model: 'Phantom', year: 'Mon, 29 May 2008', description: 'The truest definition of luxury', user: user3)
car11.photo.attach(io: file_car11, filename: "rolls.jpg", content_type: "image/jpg")
car11.save

file_car12 = URI.open("https://www.carscoops.com/wp-content/uploads/2022/08/2012-Bugatti-Veyron-16.4-Grand-Sport-Vitesse-1.jpg")
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
