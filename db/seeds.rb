# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
	User.create(first_name: Faker::Dog.name, last_name: Faker::Dog.name, description: "Simple utilisateur", email: Faker::Internet.email, age: rand(50))
end

10.times do
	City.create(name: Faker::StarTrek.location, postal_code: "75000", user_id: rand(User.count))
end

20.times do
	Gossip.create(title: Faker::Space.star_cluster, content: Faker::StarWars.wookiee_sentence, date: Faker::Date.between(30.days.ago, Date.today), user_id: rand(User.count))
end

10.times do
	Tag.create(title: Faker::StarTrek.villain, gossip_id: rand(Gossip.count))
end

20.times do
	User.all.sample.gossips << Gossip.all.sample
end

# Création d'un PM avec sender / recipient
pm = PrivateMessage.new
pm.sender = User.create(first_name: "Test PM1", last_name: "Test PM1", description: "Test PM1", email: "Test PM1", age: rand(50))
pm.recipient = User.create(first_name: "Test PM2", last_name: "Test PM2", description: "Test PM2", email: "Test PM2", age: rand(50))
pm.save

20.times do
	Comment.create(content: Faker::Lebowski.quote, user_id: rand(User.count), gossip_id: rand(Gossip.count))
end

20.times do
	CommentComment.create(content: Faker::Lebowski.quote, user_id: rand(User.count), comment_id: rand(Comment.count))
end