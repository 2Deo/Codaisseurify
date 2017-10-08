# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

song1 = Song.create!( { name: "One More Kiss", album: "From Amsterdam with Love", artist: "Johnny Delafontaine", year: 2049} )
song2 = Song.create!( { name: "Cigarettes and Coffee", album: "Bleeding with your tears", artist: "Lady Vaga", year: 2023} )
song3 = Song.create!( { name: "My Little Pony", album: "Pony Massacre Deluxe", artist: "Mary Jane", year: 2032} )
