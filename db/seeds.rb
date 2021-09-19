# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


Type.destroy_all
Category.destroy_all
Bookmark.destroy_all

status_array = [true, false]

20.times do Category.create(
    name: Faker::Beer.brand,
    status: status_array.sample()
)
end

5.times do  
    Type.create(
        name: Faker::Beer.style
    )
end

20.times do 
    Bookmark.create(
    name: Faker::Beer.name,
    url: Faker::Internet.url,
    category_id: rand(1..10),
    type_id: rand(1..5)
    )
end 