# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.destroy_all
Artist.destroy_all

artist1 = Artist.create!( { name: "Johnny Delafontaine", image_url: "http://www.20min.ch/dyim/9abc18/M600,1000/images/content/1/0/6/10620881/5/topelement.jpg"} )
artist2 = Artist.create!( { name: "Lady Vaga", image_url: "https://i.ytimg.com/vi/DIzeeGpwkVM/hqdefault.jpg"} )
artist3 = Artist.create!( { name: "Mary Jane", image_url: "https://c1.staticflickr.com/3/2858/13394294324_c6bf58b949_b.jpg"} )

artists_count = Artist.count
puts "#{artists_count} artists were created."

Song.create!([
{ name: "One More Kiss", album: "From Amsterdam with Love", artist: artist1, year: 2049 },
{ name: "Cigarettes and Coffee", album: "Bleeding with your tears", artist: artist2, year: 2023},
{ name: "My Little Pony", album: "Pony Massacre Deluxe", artist: artist3, year: 2032},
{ name: "Heartless soul", album: "Pony Massacre Deluxe", artist: artist3, year: 2032},
{ name: "Six Inch Lie", album: "Bleeding with your tears", artist: artist2, year: 2023},
{ name: "Never again", album: "From Amsterdam with Love", artist: artist1, year: 2049},

  ])
