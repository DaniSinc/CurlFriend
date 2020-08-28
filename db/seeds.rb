# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Create users"
user_1 = User.new(
    email: "littlemissafro@gmail.com", 
    password: "123456", 
    username: "littlemissafro"
    )
file = File.open(Rails.root.join('app', 'assets', 'images', 'profile_pics', 'user_1.jpg'))
user_1.profile_pic.attach(io: file, filename: 'user_1.jpg', content_type: "image/jpg")
user_1.save!

p file
p user_1
