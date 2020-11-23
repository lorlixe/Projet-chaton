# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require'faker'


User.destroy_all
User.reset_pk_sequence

Category.destroy_all
Category.reset_pk_sequence

Product.destroy_all
Product.reset_pk_sequence



5.times do |i|
    user = User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: "ebadmin#{i}@yopmail.com",
        password: 'adminadmin',
    )
end

5.times do |i|
    category = Category.create(
        name: Faker::Creature::Cat.name
    )

end


20.times do |i|
product = Product.create(
    description: Faker::Lorem.paragraph(sentence_count: 8),
    price: rand(1..99),
    name: Faker::Lorem.sentence,
    url: "https//www.chaton.com",
    category_id: rand(1..5)
    )
end
