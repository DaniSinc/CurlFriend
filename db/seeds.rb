require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 puts "Destroy content"
 Content.destroy_all
 puts "Destroy users"
 User.destroy_all

puts "Create users"
user_1 = User.new(
    email: "littlemissafro@gmail.com",
    password: "123456",
    username: "littlemissafro"
)
file = URI.open('https://images.unsplash.com/photo-1561786527-999d27422f3a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
user_1.profile_pic.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user_1.save!

user_2 = User.new(
    email: "littlemissdreads@gmail.com",
    password: "123456",
    username: "littlemissdreads")
file = URI.open('https://images.unsplash.com/photo-1523983254932-c7e6571c9d60?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=519&q=80')
user_2.profile_pic.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user_2.save!

user_3 = User.new(
    email: "littlemissweave@gmail.com",
    password: "123456",
    username: "littlemissweave")
file = URI.open('https://images.unsplash.com/flagged/photo-1580820258381-20c91a156841?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
user_3.profile_pic.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user_3.save!

user_4 = User.new(
    email: "littlemissnatural@gmail.com",
    password: "123456",
    username: "littlemissnatural")
file = URI.open('https://images.unsplash.com/photo-1558622567-2adb5927265d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
user_4.profile_pic.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user_4.save!

user_ls = User.new(
    email: "ls@gmail.com",
    password: "123456",
    username: "Latonya Staubs"
)
file = URI.open('https://images.unsplash.com/photo-1553226141-1b4e9f1ccd62?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
user_ls.profile_pic.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user_ls.save!



puts "Create contents"

user_jgs = User.new(
    email: "jgs@gmail.com",
    password: "123456",
    username: "JuGalaxSea"
)
file = URI.open('https://images.unsplash.com/photo-1563076767-5cda445a4f9f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
user_jgs.profile_pic.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user_jgs.save!

jgs_video_1 = Content.new(
    user_id: user_jgs.id,
    title: "S'Curl Comb Thru -Texturizer || StylezByJuBae",
    description: "Magic Twist: https://youtu.be/BerdU9UIxw8
 Instagram: @JuGalaxSea
 Snapchat: @JuGalaxSea",
    content_type: "Video",
    category: "Chemical treatment",
    style: "S-curl",
    video_url: "https://www.youtube.com/embed/5ka-Vyv4ejc"
)
jgs_video_1.save!


user_sr = User.new(
    email: "sr@gmail.com",
    password: "123456",
    username: "Slim Reshae"
)
file = URI.open('https://images.unsplash.com/photo-1568419141482-eccdc7b62188?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
user_sr.profile_pic.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user_sr.save!

sr_video_1 = Content.new(
    user_id: user_sr.id,
    title: "LIGHTWEIGHT CROCHET FAUX LOCS feat. Freetress Braid - Hipsta Loc",
    description: "So I tried out the new hipsta locs - lightweight crochet faux locs that 
                can be installed not only with individual methods but also great for cornrows 
                and knotless. Watch the full video for details on how many I have in my head 
                total, how long it took, and how many packs I used! This is an easy protective 
                style for natural hair! Super excited for this hair to launch! Here’s an early 
                access sneak peak of the hipsta locs! Let me know if you guys like this style 
                in the comments & until next time…xoxo, slim ",
    content_type: "Video",
    category: "Artificial",
    style: "Faux locks",
    video_url: "https://www.youtube.com/embed/hr0WALIhPtw"
)
sr_video_1.save!


user_mn = User.new(
    email: "mn@gmail.com",
    password: "123456",
    username: "MNHE"
)
file = URI.open('https://images.unsplash.com/photo-1534126416832-a88fdf2911c2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
user_mn.profile_pic.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user_mn.save!

mn_blog_1 = Content.new(
    user_id: user_mn.id,
    title: "How to Blend Clip-Ins",
    description: "Hair extensions or kinky curly clip-ins are in high demand and the challenge to supply extensions is rising Pick up some tips here!",
    content_type: "Blog post",
    category: "Artificial",
    style: "Weaves",
    text: "Clip-ins have style flexibility that has become a hype in modern society. You will 
          be amazed to know that hair extensions date as far back to medieval ages where the 
          Egyptians wore them. Those extensions were either made from human hair or sheep’s 
          wool dyed with beeswax and resin. All the wigs and extensions of the by-gone days 
          have paved the way for the modern hair extensions where all types of hair are 
          included and variety is abundant. The growth of natural hair movement has made the 
          coily clip-in hair extensions popular for women who want a natural body texture. 
          Always put the safety first before you go for selecting clip-ins. Do not let any 
          artificial hair styling make suffering to your natural hair."
)
file = File.open(Rails.root.join('app', 'assets', 'images', 'blog_images', 'blend_blog.jpg'))
mn_blog_1.blog_image.attach(io: file, filename: 'blend_blog.jpg', content_type: "image/jpg")
mn_blog_1.save!



user_am = User.new(
    email: "am@gmail.com",
    password: "123456",
    username: "Adanna Madueke"
)
file = URI.open('https://images.unsplash.com/photo-1573617868564-673610c60d5b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=528&q=80')
user_am.profile_pic.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user_am.save!

am_video_1 = Content.new(
    user_id: user_am.id,
    title: "EASIEST PROTECTIVE STYLE | JUMBO SENEGALESE ROPE TWIST On 4C Natural Hair",
    description: "Today's video is a detailed Easiest Protective style Tutorial where I will 
                  be showing you how to achieve the Jumbo Senegalese Rope Twist On 4C Natural 
                  Hair using the Rubber band method. This method is perfect for those of us that 
                  struggle with gripping the root of our braid or twist and literally also very 
                  quick as it took me under 2 hours (1 hour 30 minutes) to achieve. You can also 
                  never go wrong with a protective style this winter season, hence, this hairstyle 
                  and of course this hairstyle would rock really nice too during the spring/summer. 
                  These jumbo senegalese rope twist are literally sooo convenient and its also not 
                  heavy.",
    content_type: "Video",
    category: "Protection",
    style: "Plaits",
    video_url: "https://www.youtube.com/embed/Jigx285uI7E"
)
am_video_1.save!



ls_blog_2 = Content.new(
    user_id: user_ls.id,
    title: "HOW TO STYLE A HEAD WRAP",
    description: "Learn how to style a simple head wrap!",
    content_type: "Blog post",
    category: "Protection",
    style: "Headscarves and Headwraps",
    text: "There are many reasons to wear a head wrap; for every person you will usually 
          find that a head wrap holds a different meaning. Here are a few of my reasons: 
          it serves as a protective layer for my natural hair on days when I don't want 
          to touch my hair, it locks in moisture (essential for the summertime), and it's 
          a great stylish addition to every outfit."
)
file = File.open(Rails.root.join('app', 'assets', 'images', 'blog_images', 'wrap_blog_2.png'))
ls_blog_2.blog_image.attach(io: file, filename: 'wrap_blog_2.png', content_type: "image/png")
ls_blog_2.save!


user_ep = User.new(
    email: "ep@gmail.com",
    password: "123456",
    username: "Enly10me Plz"
)
file = URI.open('https://images.unsplash.com/photo-1597004897768-c503466472cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80')
user_ep.profile_pic.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user_ep.save!

ep_video_1 = Content.new(
    user_id: user_ep.id,
    title: "How To Get BIG Ringlet Curls",
    description: "Texturizing 4c Natural Hair",
    content_type: "Video",
    category: "Chemical treatment",
    style: "Jerry-curl",
    video_url: "https://www.youtube.com/embed/fnaxBHp9cSM"
)
ep_video_1.save!


afro_video_1 = Content.new(
    user_id: user_1.id,
    title: "The Ultimate AFRO Tutorial",
    description: "Learn how to style your ULTIMATE afro with me!",
    content_type: "Video",
    category: "Natural",
    style: "Afro",
    video_url: "https://www.youtube.com/embed/ov9xP0lymQc"
)
afro_video_1.save!

dreads_video_1 = Content.new(
    user_id: user_2.id,
    title: "How to make Instant Dreadlocks in 2020",
    description: "I'll show you how I create these instant dreads in 5 short minutes",
    content_type: "Video",
    category: "Natural",
    style: "Dreadlocks",
    video_url: "https://www.youtube.com/embed/8rlE1pWv290"
)
dreads_video_1.save!

bantu_video_1 = Content.new(
    user_id: user_3.id,
    title: "How To | Perfect Bantu Knots on Natural Hair & Transitioning Hair",
    description: "This is how I style my bantu knots, leave a comment to let me know how you got on!",
    content_type: "Video",
    category: "Natural",
    style: "Bantu knots",
    video_url: "https://www.youtube.com/embed/fFtt3Y9-cBY"
)
bantu_video_1.save!

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
scurl_video_1.save!

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
jerrycurl_video_1.save!

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
relaxed_video_1.save!

wrap_blog = Content.new(
    user_id: user_1.id,
    title: "11 Places to Find Your Next Head Wraps for Natural Hair!",
    description: "We’ve pulled together some of the best places to find just the right head wrap for you!",
    content_type: "Blog post",
    category: "Protection",
    style: "Headscarves and Headwraps",
    text: "1. The Wrap Life
    Born in Brooklyn, The Wrap Life has grown from just a thought to a thriving brand since going live in 2014. In an effort to simply fill her own need for head wraps, creator Nnenna Stella started a business that now ships hand-printed designs to women across the globe! And thanks to the simple wrap tutorials right there on the site, you’ll always have a fun, new way to style your head wrap.
    2. Fanmdjanm
    I discovered this brand last year at an event in Harlem and fell in love.

    Fanm djanm means “strong woman” in Haitian Kreyòl. Lifestyle blogger Paola Mathe (pictured) created the brand of vibrant head wraps as a way to celebrate strong women all over the world. The movement itself is meant to encourage women to be bold, be beautiful and know that each one of us is a fanm djanm in our own way."
)
file = File.open(Rails.root.join('app', 'assets', 'images', 'blog_images', 'braids_blog.jpg'))
wrap_blog.blog_image.attach(io: file, filename: 'braids_blog.jpg', content_type: "image/jpg")
wrap_blog.save!

growth_blog = Content.new(
    user_id: user_2.id,
    title: "10 Ways To Grow Long Hair Without Protective Styles",
    description: "Lorem ipsum",
    content_type: "Blog post",
    category: "Natural",
    style: "Afro",
    text: "By now I am sure you have heard a thousand times over about the benefits of protective styling. Sometimes you just want your hair to be free!

    Yes, protective styles are definitely effective, but you can retain hair length with a low manipulation regimen, too.

    Below you will find 10 Steps for Building a Low Manipulation Hair Routine."
)
file = File.open(Rails.root.join('app', 'assets', 'images', 'blog_images', 'growth_blog.jpg'))
growth_blog.blog_image.attach(io: file, filename: 'growth_blog.jpg', content_type: "image/jpg")
growth_blog.save!

half_up_blog = Content.new(
    user_id: user_3.id,
    title: "4 Half Up Half Down Hairstyles for Natural Hair",
    description: "Lorem ipsum",
    content_type: "Blog post",
    category: "Natural",
    style: "Afro",
    text: "We all have those days where we need a little variety and versatility added to our favorite natural hairstyle.

    If you frequent my site, Natural Hair Rules.com, you know that my favorite natural hair style is the Twist Out. It’s easy and works for any length of hair.

    I’ve been wearing this natural hairstyle since I first went natural to now where I’ve been natural for over 10 years. You can see pictures here.

    A Two Strand Twists and a Twist Out is the perfect natural hairstyle for work, fun, and everything in between.

    You can rock them in a low chignon or bun for a few days. Then when you’re ready to take them down it’s like you have a totally different hairstyle."
)
file = File.open(Rails.root.join('app', 'assets', 'images', 'blog_images', 'half_up_blog.jpg'))
half_up_blog.blog_image.attach(io: file, filename: 'half_up_blog.jpg', content_type: "image/jpg")
half_up_blog.save!


am_video_2 = Content.new(
    user_id: user_am.id,
    title: "4C Natural Hair Slick down 2 Jumbo Braids Pigtail using Braiding Hair | Short Hair Protective Style",
    description: "Today's video is a detailed Natural Hair Tutorial showing how to slick down short 4c Natural 
                  Hair into 2 Jumbo Braids Pigtail using Braiding Hair. I hope you all enjoy this detailed short 
                  hair protective style tutorial where I show you all how to #slickdown short 4C Natural Hair 
                  into 2 jumbo braids pigtail #protectivestyle #jumbobraids. If it was helpful, please don't 
                  forget to give me a big thumbs up, comment, share and subscribe. LOVE YOU!",
    content_type: "Video",
    category: "Natural",
    style: "Plaits",
    video_url: "https://www.youtube.com/embed/qRR86lG7jyU"
)
am_video_2.save!


ls_blog_1 = Content.new(
    user_id: user_ls.id,
    title: "DIY DOUBLE-SIDED HEAD WRAP",
    description: "Hi guys! LaTonya here with another easy and fun DIY to share with you all! I love wearing head wraps. 
          It’s something that has become a style comfort zone for me, and instantly brings a bit of color and happiness 
          to my outfits.",
    content_type: "Blog post",
    category: "Protection",
    style: "Headscarves and Headwraps",
    text: "Some head wraps are quite 
          expensive to purchase, but with this DIY, you can make your own double-sided head wrap in just a few minutes. 
          Half the cost, double the wear!
          The great thing about a head wrap is you can wear it so many ways. Sometimes, I like my hair fully covered, 
          so I pull it all in and have a tucked-in knot like above. Sometimes, I like a little bit of hair in my face 
          and let it hang out. Other times, I like a lot of my hair shown and fold the length of the wrap one time, 
          and then tie it. Then it shows most of my fro. Enjoy!  xo. LaTonya"
)
file = File.open(Rails.root.join('app', 'assets', 'images', 'blog_images', 'wrap_blog_1.png'))
ls_blog_1.blog_image.attach(io: file, filename: 'wrap_blog_1.png', content_type: "image/png")
ls_blog_1.save!




user_iu = User.new(
    email: "iu@gmail.com",
    password: "123456",
    username: "indeeuniverse"
)
file = URI.open('https://images.unsplash.com/photo-1581031784499-049b37b3cee0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=463&q=80')
user_iu.profile_pic.attach(io: file, filename: 'nes.png', content_type: 'image/png')
user_iu.save!

iu_video_1 = Content.new(
    user_id: user_iu.id,
    title: "KERATIN TREATMENT ON TYPE 4 NATURAL HAIR",
    description: "Keratin treatment on type 4 natural hair. In this video, I’ll be sharing my 
              Keratin experience from start to finish. If you’ve been thinking about it or just 
              interested in the process, then keep on watching. I have fine type 4 natural hair 
              and I don't flat iron my hair often. The flat ironing that was done for this keratin 
              treatment was my first in a long time. My hair is slightly different, but as my 
              hairstylist said more treatments are needed to see a significant change. I had no 
              heat damage, but I need to take better care of my hair in general.",
    content_type: "Video",
    category: "Chemical treatment",
    style: "Weaves",
    video_url: "https://www.youtube.com/embed/si84Pd8ajUI"
)
iu_video_1.save!



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

Chatroom.create!(name:"Afro")
Chatroom.create!(name:"BantuKnots")
Chatroom.create!(name:"Dreadlocks")
Chatroom.create!(name:"Extensions")
Chatroom.create!(name:"FauxLocks")
Chatroom.create!(name:"HeadscarvesAndHeadwraps")
Chatroom.create!(name:"Jerry-curl")
Chatroom.create!(name:"Shaved")
Chatroom.create!(name:"S-curl")
Chatroom.create!(name:"Plaits")
Chatroom.create!(name:"Perms")
Chatroom.create!(name:"Weaves")
