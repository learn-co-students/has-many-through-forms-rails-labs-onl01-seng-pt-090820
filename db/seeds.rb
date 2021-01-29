# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


categories = Category.create([{ name: 'Food' }, { name: 'History' }])
comments = Comment.create([{ content: 'comments about food' }, { content: 'comments about history' }])
# post_categories = PostCategory.create([{ name: 'post CAT1' }, { name: 'post CAT2' }])
posts = Post.create([{ title: 'Food Times', content: 'some words about food' }, { title: 'History Times', content: 'some words about history' }])
users = User.create([{ username: 'User1234', email: 'user1234@email.com'}, { username: 'User5678', email: 'user5678@email.com'}])