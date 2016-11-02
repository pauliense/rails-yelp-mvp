# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "01 02 03 04 05",
    category:     "belgian"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "11 12 13 14 15",
    category:     "chinese"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "21 22 23 24 25",
    category:     "italian"
  },
  {
    name:         "Le pré antoine",
    address:      "route de Suresnes 75066 Paris",
    phone_number: "31 22 23 24 25",
    category:     "french"
  },
  {
    name:         "Le pré wagon",
    address:      "route de Suresnes 75076 Paris",
    phone_number: "51 22 23 24 25",
    category:     "japanese"
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }
