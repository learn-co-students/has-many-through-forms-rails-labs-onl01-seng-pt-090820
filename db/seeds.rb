# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: "Pop Culture")
Category.create(name: "Celebrity Gossip")
Category.create(name: "Science")
Post.create(title: "Who Is Britney Spears's Boyfriend?", content: "He's hot! He's young! And they're in love!")
Post.create(title: "The best lines from Schitt's Creek", content: "Anytime Moira speaks or makes any sort of sound literally ever.")
Post.create(title: "Debunking the COVID-19 Vaccine", content: "It won't make you infertile. You need two doses and then you still need to wear a mask so just do it.") 
PostCategory.create(post_id: 7, category_id: 5)
PostCategory.create(post_id: 8, category_id: 4)
PostCategory.create(post_id: 9, category_id: 6)
User.create(username: "mikelanne.wood", email: "mikelanne.wood@gmail.com")
User.create(username: "britneyfan4eva", email: "freebritney@gmail.com")
User.create(username: "albusthedog", email: "albusiscute@woofwoof.com")
Comment.create(content: "He is hot hot hot! I hope she's happy!", user_id: 1, post_id: 7)
Comment.create(content: "I want to go to the dog park! Get a vaccine plan rolling!", user_id: 3, post_id: 9)
Comment.create(content: "This is the best show", user_id: 1, post_id: 8)
Comment.create(content: "He's so funny on instagram!", user_id: 2, post_id: 7)
Comment.create(content: "I want to plan my wedding already! Lets get national vaccine rollout!", user_id: 1, post_id: 9)
Comment.create(content: "I love looking at his instagram!", user_id: 1, post_id: 7)
Comment.create(content: "My humans love this show", user_id: 3, post_id: 7)
Comment.create(content: "Free Britney!", user_id: 2, post_id: 7)
Comment.create(content: "BARK BARK!", user_id: 3, post_id: 9)
