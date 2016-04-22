# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User1 = User.create(first_name: "Frank", last_name: "Miller", email: "frank@gmail.com", password: 12345678)

# song1 = Song.create(artist: "Metallica", title: "Battery", user: User.find(1))
# song2 = Song.create(artist: "Slayer", title: "Angel of Death", user: User.find(2))

favorite1 = Favorite.create(user: User.find(1), song: Song.find(3))