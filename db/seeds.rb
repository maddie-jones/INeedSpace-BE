# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
favorite_1 = Favorite.create({
  explanation: "Rigil Kentaurus is the bright star near the top of this broad southern skyscape. Of course it's probably better known as Alpha Centauri, nearest star system to the Sun. Below it sprawls a dark nebula complex. The obscuring interstellar dust clouds include Sandqvist catalog clouds 169 and 172 in silhouette against the rich starfields along the southern Milky Way. Rigil Kent is a mere 4.37 light-years away, but the dusty dark nebulae lie at the edge of the starforming Circinus-West molecular cloud about 2,500 light-years distant. The wide-field of view spans over 12 degrees (24 full moons) across southern skies.",
  url: "https://apod.nasa.gov/apod/image/1904/sandqvist169_colombari1024.jpg",
  hdurl: "https://apod.nasa.gov/apod/image/1904/sandqvist169_colombari.jpg",
  title: "Rigil Kentaurus and Sandqvist 169",
  media_type: "image"
  })
