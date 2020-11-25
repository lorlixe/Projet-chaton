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


pictures_array = ["https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/American+curl/Promo-Facebook-Ad+(Carousel)+(1).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/American+curl/Promo-Facebook-Ad+(Carousel)+(3).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/American+curl/Promo-Facebook-Ad+(Carousel).jpeg",
"https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/American+curl/Promo-Twitter-Profile+Image+(2).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/American+shorthair/Promo-Facebook-Ad+(Carousel)+(14).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/American+shorthair/Promo-Twitter-Profile+Image+(13).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Angora+turk/Promo-Facebook-Ad+(Carousel)+(1).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Angora+turk/Promo-Facebook-Ad+(Carousel).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Angora+turk/Promo-Facebook-Ad+(Carousel)+(2).jpeg",
		"https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Balinais/Promo-Facebook-Ad+(Carousel).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Balinais/Promo-Facebook-Ad+(Carousel)+(4).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Balinais/Promo-Facebook-Ad+(Carousel)+(5).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Balinais/Promo-Facebook-Ad+(Carousel)+(2).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Bengal/Promo-Facebook-Ad+(Carousel)+(1).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Bengal/Promo-Twitter-Profile+Image+(8).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Munchkin/Promo-edited-image.jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Munchkin/Promo-Facebook-Ad+(Carousel)+(1).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Munchkin/Promo-Facebook-Ad+(Carousel).jpeg",
    "https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Munchkin/Promo-Facebook-Ad+(Carousel)2.jpeg",
		"https://photos-chatons.s3.eu-west-3.amazonaws.com/kittens+resize/Bleu+russe/Promo-Twitter-Profile+Image+(2).jpeg"
]


cat_names = ["Minette","Tigrou","Mimi","Chipie","Gribouille","Caramel","Caline","Nala","Félix","Simba","Maya","Minou","Mimine","Princesse","Filou","Fripouille","Kitty","Plume","Isis","Réglisse"]


description_array=["Un fidèle matou pour vous tenir compagnie, pour chasser les souris et pour exterminer les cafards !",
"Un brave minou un poil farouche mais qui adore les câlins ! Vous ne pourrez plus vous en passer !", 
"Cette petite chatte a un caractère de cochon.. Elle ne se laisse pas mener à la baguette mais sera votre plus fidèle ami", 
"Ancien chat de gouttière récemment converti à la tranquillité domestique... aime toujours se promener sur les toits au clair de lune.",
"Un matou paresseux et pantouflard, qui passe le plus clair de son temps à roupiller ; il en faut pour tous les goûts !",
"Ce gentil minou dont le regard vous fait déjà fondre adore les humains et leur compagnie ; il est joueur, facétieux et s'attache très vite.", 
"Petite boule de poils qui miaule et qui griffe (un peu mais pas trop) recherche bipède affectueux pour passer ses journées", 
"Un buveur de lait aux ronronnement apaisants qui (nous a-t-il dit) ne perd presque pas ses poils.. qui veut l'adopter ?",
"Un ex-chat errant qui a renoncé à la vie sauvage pour embrasser la chaleur d'un foyer et d'un maître.. arriverez-vous à le combler ?",
"Ce frêle minet est coquin comme pas deux ! A toujours plus d'un tour dans son sac !",
"Un animal racé et élancé, d'une grande élégance.. ses photos ne lui rendent absolument pas justice !",
"On n'achète pas un chat dans un sac, d'après un dicton.. au fait, t'as pas 100 sacs ?",
"A bon chat bon rat.. ne faites pas le rat, achetez-le !",
"L'amour que vous portera ce félin si vous l'adoptez, c'est pas du pipi de chat..",
"Chat échaudé craint l'eau froide.. facile à comprendre, même quand on n'a pas inventé l'eau chaude ! ",
"Y a pas photo, celui-là c'est le plus beau !",
"Vous vous laisserez bien tenter par l'a-chat d'une image volée à cette adorable boule de poils ?",
"Chacun cherche son chat.. avez-vous trouvé le vôtre ?",
"Acheter chat en poche, c'est moche.. acheter chat en photo, c'est beau.",
"L'essentiel, dans la vie, c'est de toujours retomber sur ses pattes."]

category_array=["gros paresseux", "matou tranquille", "petit mais vivace", "tempérament solitaire", "pour les soirées au coin du feu"]

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
        name: category_array[i]
    )

end


20.times do |i|
product = Product.create(
    description: description_array[i],
    price: rand(1..99),
    name: cat_names[i],
    url: pictures_array[i],
    category_id: rand(1..5)
    )
end
