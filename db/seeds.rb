# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Album.destroy_all

Album.create!([{
  name: "Hot Fire",
  image: "1",
  price: 25.5,
  artist: "Fire Person",
  release_date: "2016-01-01"
},
{
  name: "Pixels",
  image: "1",
  price: 15.5,
  artist: "Gam3r",
  release_date: "2017-02-15"
},
{
  name: "Cold Fire",
  image: "1",
  price: 12.5,
  artist: "Not an Arsonist",
  release_date: "2014-03-05"
}])
