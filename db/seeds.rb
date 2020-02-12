# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Data ..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Only run on development (local) instances not on production, etc.
unless Rails.env.development?
  puts "Development seeds only (for now)!"
  exit 0
end

# Let's do this ...

## CATEGORIES

puts "Finding or Creating Categories ..."

cat1 = Category.find_or_create_by! name: 'Apparel'
cat2 = Category.find_or_create_by! name: 'Electronics'
cat3 = Category.find_or_create_by! name: 'Swag'

## PRODUCTS

puts "Re-creating Products ..."

Product.destroy_all

cat1.products.create!({
  name:  'Grenade Necklace',
  description: 'Junglist is a slang term which first referred to a person living in an area of West Kingston, Jamaica, called Jungle. It was later used as a term to refer to someone who is a dedicated listener of jungle music. Tracks from this genre often contain calls and references to the "original junglists" and "jungle soldiers". Junglists usually gravitate towards oldschool and ragga jungle.',
  image: open_asset('apparel7.jpg'),
  quantity: 4,
  price: 34.49
})

cat1.products.create!({
  name:  'Junglist Hat',
  description: 'Junglist developed into a slang term for outlaw toughs who have ostensibly survived- or operate according to the "law of the jungle". Certain tracks made references to the "original rudebwoys" or "original gangstas" as denoting particularly respected junglists. Most members of this sub-culture took great pride in the music created by jungle producers',
  image: open_asset('apparel3.jpg'),
  quantity: 8,
  price: 1_225.00
})

cat1.products.create!({
  name:  'Junglist T-shirt',
  description: 'Unlike some urban styles of music, drug-dealing is rarely mentioned in drum and bass tracks, but several MCs sometimes feature lyrics in relation. The only generally accepted illegal activity in the subculture are drug use and graffiti. Junglists often consume cannabis perhaps arising from the reggae roots of jungle music.',
  image: open_asset('apparel4.jpg'),
  quantity: 40,
  price: 24.49
})

cat2.products.create!({
  name:  'Rane Empath',
  description: 'Rane\'s newest baby, the Empath mixer. Empath, short for empathy (for the performing DJ), is a new direction for Rane and is designed to pick up where Rane\'s TTM line left off. Empath is geared for both traveling DJs and leading-edge clubs that require a truly scratch-friendly instrument and a versatile performance mixer.',
  image: open_asset('electronics2.jpg'),
  quantity: 18,
  price: 649.99
})

cat3.products.create!({
  name:  'Soundsystem',
  description: 'Soundsystem culture first came about in 1950s Jamaica with the earliest sound systems playing mainly US rhythm and blues as well as uptempo ska. ... Soundsystem culture is also credited with the birth of hip hop in the 1970s. MCs such as Kool Herc used reggae sound system culture to promote breakdance culture.',
  image: open_asset('swag1.jpg'),
  quantity: 3,
  price: 22264.50
})

cat1.products.create!({
  name:  'Camo Pants',
  description: 'Ali G could be seen as a parody junglist (e.g. dressing in camouflage and listening to loud drum and bass music in his car; M-Beat and General Levy\'s "Incredible" was played in the Ali G feature film and appearing on its soundtrack), though he could also be treated as a parody of an avid hip hop listener.',
  image: open_asset('apparel5.jpg'),
  quantity: 32,
  price: 26.29
})

cat3.products.create!({
  name:  'Metalheadz Slipmats',
  description: 'Metalheadz is a drum and bass record label based in the United Kingdom. Founded in 1994 by Kemistry & Storm and Goldie. Goldie\'s early experiences of the rave scene, especially the club Rage had a profound effect on him. DJ Kemistry introduced him to 4hero\'s Reinforced Records where he went on to create some design and artwork for them, leading to doing A&R for the label. ',
  image: open_asset('swag3.jpg'),
  quantity: 2,
  price: 987.65
})

cat1.products.create!({
  name:  'Camo Parka',
  description: 'The term itself is connected with the origin of the name jungle. During the time of junglists, they were sometimes referred to as "rude bwoii", a slang term originally used by Jamaicans (as rude boy), meaning "gangsta" or "badbwoy" ("bad boy"). The term refers to an inner city area of West Kingston, Jamaica, called Jungle.',
  image: open_asset('apparel2.jpg'),
  quantity: 8,
  price: 255.00
})

cat2.products.create!({
  name:  'Technics SL-1200',
  description: 'Technics SL-1200 is a series of direct-drive turntables originally manufactured from October 1972 until 2010, and resumed in 2016, by Matsushita (now Panasonic) under the brand name of Technics. S means \'Stereo\', L means \'Player\'. Originally released as a high fidelity consumer record player, it quickly became adopted among radio and disco club disc jockeys.',
  image: open_asset('electronics1.jpg'),
  quantity: 10,
  price: 799.99
})

cat2.products.create!({
  name:  'MC Microphone',
  description: 'So why can MCs be so divisive? “Years ago I saw MC culture grow into a very negative and ugly thing,” he explains. “Jungle became so popular that all the kids in the ends aspired to be jungle MCs. You know the cliché – 20 MCs around the mic, all bada bada bada bada. Every hype kid would be there, they’d want their time on the mic and they’d want to call out Salford or Moss Side or whatever."',
  image: open_asset('electronics3.jpg'),
  quantity: 23,
  price: 83.75
})

cat1.products.create!({
  name:  'Junglist Movement T-shirt',
  description: 'Junglist cause no other music affects me the same way. For me, 110% about the music and DJing the music; no scenester proclamations or social ties. This year marks 20yrs of considering myself a junglist, and maybe because I\'ve valued records and DJing above many things that others may consider priorities, like girlfriends, careers, human affection, etc...',
  image: open_asset('apparel6.jpg'),
  quantity: 0,
  price: 52.00
})

cat3.products.create!({
  name:  'Gold Teeth',
  description: 'Junglists belong to what is seen as a predominantly UK-based drum and bass subculture. As a subculture, however, it is not nearly as distinct as goth or punk to the untrained eye, where members can often distinguish each other by their mannerisms and fashion without hearing their choice of music. Many of those who identify as Junglists adopt a mix of rasta, rudebwoy and B-Boy fashions since jungle, drum and bass and hip hop have close ties as subcultures.',
  image: open_asset('swag2.jpg'),
  quantity: 3,
  price: 269.99
})

puts "DONE!"
