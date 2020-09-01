require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts "Destroy content"
# Content.destroy_all
# puts "Destroy users"
# User.destroy_all

puts "Create users"
user_1 = User.new(
    email: "littlemissafro@gmail.com",
    password: "123456",
    username: "littlemissafro"
)
file = URI.open('https://images.unsplash.com/flagged/photo-1580820258381-20c91a156841?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
user_1.profile_pic.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user_1.save!

user_2 = User.new(
    email: "littlemissdreads@gmail.com",
    password: "123456",
    username: "littlemissdreads")
file = URI.open('https://images.unsplash.com/flagged/photo-1580820258381-20c91a156841?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
user_2.profile_pic.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user_2.save!

user_3 = User.new(
    email: "littlemissweave@gmail.com",
    password: "123456",
    username: "littlemissweave")
file = URI.open('https://images.unsplash.com/photo-1561786527-999d27422f3a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
user_3.profile_pic.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user_3.save!

user_4 = User.new(
    email: "littlemissnatural@gmail.com",
    password: "123456",
    username: "littlemissnatural")
file = URI.open('https://images.unsplash.com/photo-1523983254932-c7e6571c9d60?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=519&q=80')
user_4.profile_pic.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user_4.save!

puts "Create contents"

afro_video_1 = Content.new(
    user_id: user_1.id,
    title: "The Ultimate AFRO Tutorial",
    description: "Learn how to style your ULTIMATE afro with me!",
    content_type: "Video",
    category: "Natural",
    style: "Afro",
    video_url: "https://www.youtube.com/embed/ov9xP0lymQc"
)
afro_video_1.save

dreads_video_1 = Content.new(
    user_id: user_2.id,
    title: "How to make Instant Dreadlocks in 2020",
    description: "I'll show you how I create these instant dreads in 5 short minutes",
    content_type: "Video",
    category: "Natural",
    style: "Dreadlocks",
    video_url: "https://www.youtube.com/embed/8rlE1pWv290"
)
dreads_video_1.save

bantu_video_1 = Content.new(
    user_id: user_3.id,
    title: "How To | Perfect Bantu Knots on Natural Hair & Transitioning Hair",
    description: "This is how I style my bantu knots, leave a comment to let me know how you got on!",
    content_type: "Video",
    category: "Natural",
    style: "Bantu knots",
    video_url: "https://www.youtube.com/embed/fFtt3Y9-cBY"
)
bantu_video_1.save

scurl_video_1 = Content.new(
    user_id: user_4.id,
    title: "How To Texturize Hair With S Curl 2019",
    description: "In this video, I show you how to texturize your hair with Luster's S curl regular strength texturizer.

    PURCHASE S CURL TEXTURIZER:
    REGULAR STRENGTH (affiliate link): https://amzn.to/38Dcsi6

    EXTRA STRENGTH (affiliate link):https://amzn.to/31XmDgf


    *** thewinstonee.com ***",
    content_type: "Video",
    category: "Chemical treatment",
    style: "S-curl",
    video_url: "https://www.youtube.com/embed/2p5EIUtLCxE"
)
scurl_video_1.save

jerrycurl_video_1 = Content.new(
    user_id: user_1.id,
    title: "My Updated Curly Hair Routine | How I Activates My Jerry Curl On 4c Natural Hair |",
    description: "Thank you guys so so much for watching and checking out the description box

    This is just my recent jerry curl routine, I hope you find it interesting and helpful to you

    If you like this video please drop me a like, comment, share and subscribe, it motivates me to create more content ",
    content_type: "Video",
    category: "Chemical treatment",
    style: "Jerry-curl",
    video_url: "https://www.youtube.com/embed/NlmWom02M80"
)
jerrycurl_video_1.save

relaxed_video_1 = Content.new(
    user_id: user_3.id,
    title: "How I relax my hair at home",
    description: "Hi loves! ♡

    In this video I share with you how I relax my hair at home.

    ☆ What to watch next:

    - get unready with me + get to know me q&a: https://bit.ly/2SA6FE0
    - HAIR VLOG: dyeing my hair + how i install/style sew-ins: https://bit.ly/354SzgB
    - sleek high ponytail tutorial. (for short hair): https://bit.ly/2Q5LNTp

    Subscribe for new videos every week: https://goo.gl/dvFRa9
    Check out my last video: https://goo.gl/LCK2Uc",
    content_type: "Video",
    category: "Chemical treatment",
    style: "Shaved",
    video_url: "https://www.youtube.com/embed/-vFmWIcVgss"
)
relaxed_video_1.save

wrap_blog = Content.new(
    user_id: user_1.id,
    title: "11 Places to Find Your Next Head Wraps for Natural Hair!",
    description: "We’ve pulled together some of the best places to find just the right head wrap for you!",
    content_type: "Blog post",
    category: "Protective",
    style: "Headscarves and Headwraps",
    text: "1. The Wrap Life
    Born in Brooklyn, The Wrap Life has grown from just a thought to a thriving brand since going live in 2014. In an effort to simply fill her own need for head wraps, creator Nnenna Stella started a business that now ships hand-printed designs to women across the globe! And thanks to the simple wrap tutorials right there on the site, you’ll always have a fun, new way to style your head wrap.
    2. Fanmdjanm
    I discovered this brand last year at an event in Harlem and fell in love.

    Fanm djanm means “strong woman” in Haitian Kreyòl. Lifestyle blogger Paola Mathe (pictured) created the brand of vibrant head wraps as a way to celebrate strong women all over the world. The movement itself is meant to encourage women to be bold, be beautiful and know that each one of us is a fanm djanm in our own way."
)
file = File.open(Rails.root.join('app', 'assets', 'images', 'blog_images', 'braids_blog.jpg'))
wrap_blog.blog_image.attach(io: file, filename: 'braids_blog.jpg', content_type: "image/jpg")
wrap_blog.save

growth_blog = Content.new(
    user_id: user_2.id,
    title: "10 Ways To Grow Long Hair Without Protective Styles",
    description: "Lorem ipsum",
    content_type: "Blog post",
    category: "Natural",
    text: "By now I am sure you have heard a thousand times over about the benefits of protective styling. Sometimes you just want your hair to be free!

    Yes, protective styles are definitely effective, but you can retain hair length with a low manipulation regimen, too.

    Below you will find 10 Steps for Building a Low Manipulation Hair Routine."
)
file = File.open(Rails.root.join('app', 'assets', 'images', 'blog_images', 'growth_blog.jpg'))
growth_blog.blog_image.attach(io: file, filename: 'growth_blog.jpg', content_type: "image/jpg")
growth_blog.save

half_up_blog = Content.new(
    user_id: user_3.id,
    title: "4 Half Up Half Down Hairstyles for Natural Hair",
    description: "Lorem ipsum",
    content_type: "Blog post",
    category: "Natural",
    text: "We all have those days where we need a little variety and versatility added to our favorite natural hairstyle.

    If you frequent my site, Natural Hair Rules.com, you know that my favorite natural hair style is the Twist Out. It’s easy and works for any length of hair.

    I’ve been wearing this natural hairstyle since I first went natural to now where I’ve been natural for over 10 years. You can see pictures here.

    A Two Strand Twists and a Twist Out is the perfect natural hairstyle for work, fun, and everything in between.

    You can rock them in a low chignon or bun for a few days. Then when you’re ready to take them down it’s like you have a totally different hairstyle."
)
file = File.open(Rails.root.join('app', 'assets', 'images', 'blog_images', 'half_up_blog.jpg'))
half_up_blog.blog_image.attach(io: file, filename: 'half_up_blog.jpg', content_type: "image/jpg")
half_up_blog.save

puts "Deleting all comments..."
Comment.destroy_all
puts "Creating new comments..."

Comment.create(content_id: 1, user_id: 2, text: "So cool!")
Comment.create(content_id: 1, user_id: 1, text: "Thanks!!!")

Comment.create(content_id: 2, user_id: 3, text: "Amazing")
Comment.create(content_id: 2, user_id: 1, text: "Thanks for sharing <3")
Comment.create(content_id: 2, user_id: 2, text: ":)))")

Comment.create(content_id: 3, user_id: 1, text: "So cute")
Comment.create(content_id: 3, user_id: 2, text: "I love this")

puts "Deleting all discussions..."
Chatroom.destroy_all
puts "Creating new discussions..."

Chatroom.create(name:"Afro")
Chatroom.create(name:"BantuKnots")
Chatroom.create(name:"Dreadlocks")
Chatroom.create(name:"Extensions")
Chatroom.create(name:"FauxLocks")
Chatroom.create(name:"HeadscarvesAndHeadwraps")
Chatroom.create(name:"Jerry-curl")
Chatroom.create(name:"Relaxed")
Chatroom.create(name:"S-curl")
Chatroom.create(name:"Plaits")
Chatroom.create(name:"Perms")
Chatroom.create(name:"Weaves")
