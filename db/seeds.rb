# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
    user_id: user_1.id, 
    title: "The Ultimate AFRO Tutorial", 
    description: "How-to...",
    content_type: "Video",
    category: "Natural",
    style: "Afro",
    #video_url: "https://www.youtube.com/watch?v=ov9xP0lymQc"
    video_url: "https://www.youtube.com/embed/ov9xP0lymQc"
)
afro_tutorial_1.save

dreads_tutorial_1 = Content.new(
    user_id: user_2.id, 
    title: "How to make Instant Dreadlocks in 2020", 
    description: "How-to...",
    content_type: "Video",
    category: "Natural",
    style: "Dreadlocks",
    #video_url: "https://www.youtube.com/watch?v=8rlE1pWv290"
    video_url: "https://www.youtube.com/embed/8rlE1pWv290"
)
dreads_tutorial_1.save

bantu_tutorial_1 = Content.new(
    user_id: user_3.id, 
    title: "How To | Perfect Bantu Knots on Natural Hair & Transitioning Hair", 
    description: "How-to...",
    content_type: "Video",
    category: "Natural",
    style: "Bantu knots",
    #video_url: "https://www.youtube.com/watch?v=fFtt3Y9-cBY"
    video_url: "https://www.youtube.com/embed/fFtt3Y9-cBY"
)
bantu_tutorial_1.save

# ContentCategory.new
