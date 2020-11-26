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

Cart.destroy_all
Cart.reset_pk_sequence


pictures_array = ["https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/American+curl/Promo-Facebook-Ad+(Carousel)+(1).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/American+curl/Promo-Facebook-Ad+(Carousel)+(3).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/American+curl/Promo-Facebook-Ad+(Carousel).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/American+shorthair/Promo-Facebook-Ad+(Carousel)+(14).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Angora+turk/Promo-Facebook-Ad+(Carousel)+(1).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Angora+turk/Promo-Facebook-Ad+(Carousel).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Balinais/Promo-Facebook-Ad+(Carousel)+(3).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Balinais/Promo-Facebook-Ad+(Carousel)+(5).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Balinais/Promo-Facebook-Ad+(Carousel)+(2).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Bengal/Promo-Facebook-Ad+(Carousel)+(1).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Angora+turk/Promo-Facebook-Ad+(Carousel)+(1).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Angora+turk/Promo-Facebook-Ad+(Carousel).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Bengal/Promo-Facebook-Ad+(Carousel)+(1).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Bengal/Promo-Facebook-Ad+(Carousel)+(3).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Bleu+russe/Promo-Facebook-Ad+(Carousel)+(1).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Bleu+russe/Promo-Facebook-Ad+(Carousel)+(2).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Bleu+russe/Promo-Facebook-Ad+(Carousel)+(3).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Bleu+russe/Promo-Facebook-Ad+(Carousel).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/American+curl/Promo-Facebook-Ad+(Carousel)+(2).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Balinais/Promo-Facebook-Ad+(Carousel).jpeg"

]


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
        name: Faker::Nation.nationality
    )

end


20.times do |i|
product = Product.create(
    description: Faker::Lorem.paragraph(sentence_count: 8),
    price: rand(1..99),
    name: Faker::Creature::Cat.name,
    url: pictures_array[i],
    category_id: rand(1..5)
    )
end
