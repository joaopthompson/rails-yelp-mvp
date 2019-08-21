# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '12344555',
    category:     'indian',
    reviews:      @review = Review.new(content: "good indian restaurant in Shoreditch", rating: 5)
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '23493843',
    category:     'italian',
    reviews:      @review = Review.new(content: "decent pizza restaurant in Shoreditch", rating: 3)
  },
  {
    name:         'Bullguer',
    address:      'Rua Fradique Coutinho',
    phone_number: '23423423',
    category:     'american',
    reviews:      @review = Review.new(content: "good burgers", rating: 5)
  },
  {
    name:         'Vintao',
    address:      'Rua Fidalga',
    phone_number: '4354344',
    category:     'brazilian',
    reviews:      @review = Review.new(content: "good price, ok food", rating: 3)
  },
  {
    name:         'Astor',
    address:      'Vila Madalena',
    phone_number: '83489549',
    category:     'brazilian',
    reviews:      @review = Review.new(content: "great beer, good food", rating: 4)
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
