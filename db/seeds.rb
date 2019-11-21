# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

16.times do |i|
  temp = Blogpost.create(
    {
      title: (Faker::Creature::Cat.name + ' ' + Faker::Creature::Cat.breed),
      body_area: Faker::Lorem.sentence(word_count: 1500),
    }
  )
  temp.main_image.attach(
    io: File.open('storage/0r/tn/0rtn826podzzh2xt3aat3mrfxvaa'),
    filename: 'file.png'
  )
  temp.save!
end