# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(name: 'Tina', photo: 'https://unsplash.com/photos/Zz5LQe-VSMY', bio: 'Painter.')
user2 = User.create(name: 'Christine', photo: 'https://unsplash.com/photos/W7b3eDUb_2I', bio: 'Dancer.')

post1 = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
post2 = Post.create(author: first_user, title: 'Hello', text: 'This is my second post')
post3 = Post.create(author: second_user, title: 'Hello', text: 'This is my first post')
post4 = Post.create(author: second_user, title: 'Hello', text: 'This is my second post')

comment1 = Comment.create(post: Post.first,author: User.first, text: 'Hi Christine!' )
comment2 = Comment.create(post: Post.first,author: User.second, text: 'Hi Tina!' )
comment3 = Comment.create(post: Post.second,author: User.second, text: 'Hi!' )
comment4 = Comment.create(post: Post.second,author: User.first, text: 'Hey!' )
comment5 = Comment.create(post: Post.third,author: User.first, text: 'Hi there!' )
comment6 = Comment.create(post: Post.third,author: User.second, text: 'Hello!' )

user = User.find_by(name: 'John')
user_update = User.find_by(name: 'John').update(bio: 'Constructor')
user3 = User.create(name: 'Jane', photo: 'https://unsplash.com/photos/JoKS3XweV50', bio: 'Chef.')
user3.destroy
