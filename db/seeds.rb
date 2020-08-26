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

braids_blog = Content.new(
    user_id: rand(1..4),
    title: "How to Wash Box Braids",
    description: "Lorem ipsum",
    content_type: "Blog post",
    category: "Natural",
    style: "Braids",
    text: "Box braids give us the freedom to go up to a month or two without the worry of styling, but that doesn’t mean all care goes out of the window! Although you are wearing box braids, you still need to cleanse your hair – especially if you will be wearing them for the long term. This ensures that your scalp won’t become overloaded with buildup, gets itchy or becomes irritated. It also gives your hair much needed contact with good old H20. Here is how you can wash your hair with box braids if you are unsure of how this works:"
)
braids_blog.save

growth_blog = Content.new(
    user_id: rand(1..4),
    title: "10 Ways To Grow Long Hair Without Protective Styles"
    description: "Lorem ipsum"
    content_type: "Blog post"
    category: "Natural"
    text: "By now I am sure you have heard a thousand times over about the benefits of protective styling. Sometimes you just want your hair to be free!

    Yes, protective styles are definitely effective, but you can retain hair length with a low manipulation regimen, too.

    Below you will find 10 Steps for Building a Low Manipulation Hair Routine."
)
growth_blog.save

half_up_blog = Content.new(
    user_id: rand(1..4),
    title: "4 Half Up Half Down Hairstyles for Natural Hair"
    description: "Lorem ipsum"
    content_type: "Blog post"
    category: "Natural"
    text: "We all have those days where we need a little variety and versatility added to our favorite natural hairstyle.

    If you frequent my site, Natural Hair Rules.com, you know that my favorite natural hair style is the Twist Out. It’s easy and works for any length of hair.

    I’ve been wearing this natural hairstyle since I first went natural to now where I’ve been natural for over 10 years. You can see pictures here.

    A Two Strand Twists and a Twist Out is the perfect natural hairstyle for work, fun, and everything in between.

    You can rock them in a low chignon or bun for a few days. Then when you’re ready to take them down it’s like you have a totally different hairstyle."
)
half_up_blog.save
