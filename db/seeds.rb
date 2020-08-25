# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy categories"
Category.destroy_all
puts "Create categories"

Category.create(name: "Afro")
Category.create(name: "Bantu Knots")
Category.create(name: "Dreadlocks")
Category.create(name: "Plaits")
Category.create(name: "Weaves")
Category.create(name: "Extensions")
Category.create(name: "Faux Locks")
Category.create(name: "Perms")
Category.create(name: "Relaxed")
Category.create(name: "S-Curl")
Category.create(name: "Jerri-Curl")
Category.create(name: "Headscarves & Headwraps")

Category.create(name: "Natural")
Category.create(name: "Artificial")
Category.create(name: "Chemical Treatment")
Category.create(name: "Protection")

puts "Destroy users"
User.destroy_all

puts "Create users"
user_1 = User.new(email: "littlemissafro@gmail.com", password: "123456")
user_1.save!

user_2 = User.new(email: "littlemissdreadlocks@gmail.com", password: "123456")
user_2.save!

user_3 = User.new(email: "littlemissweave@gmail.com", password: "123456")
user_3.save!

user_4 = User.new(email: "littlemissnatural@gmail.com", password: "123456")
user_4.save!

puts "Destroy content"
Content.destroy_all
puts "Create contents"

afro_tutorial_1 = Content.new(
    user: user_1, 
    title: "The Ultimate AFRO Tutorial", 
    description: "How-to...",
    content_type: "Video",
    video_url: "https://www.youtube.com/embed/ov9xP0lymQc"
)
afro_tutorial_1.save

dreads_tutorial_1 = Content.new(
    user: user_1, 
    title: "How to make Instant Dreadlocks in 2020", 
    description: "How-to...",
    content_type: "Video",
    video_url: "https://www.youtube.com/embed/8rlE1pWv290"
)
dreads_tutorial_1.save

bantu_tutorial_1 = Content.new(
    user: user_1, 
    title: "How To | Perfect Bantu Knots on Natural Hair & Transitioning Hair", 
    description: "How-to...",
    content_type: "Video",
    video_url: "https://www.youtube.com/embed/fFtt3Y9-cBY"
)
bantu_tutorial_1.save
