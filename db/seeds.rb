# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Continent.destroy_all
Nation.destroy_all
Restaurant.destroy_all
Borough.destroy_all
Neighborhood.destroy_all

na = Continent.create(name: "North America")
sa = Continent.create(name: "South America")
europe = Continent.create(name: "Europe")
asia = Continent.create(name: "Asia")


canada = Nation.create(name: "Canada", continent_id: na.id)
mexico = Nation.create(name: "Mexico", continent_id: na.id)
chile = Nation.create(name: "Chile", continent_id: sa.id)
france = Nation.create(name: "France", continent_id: europe.id)
spain = Nation.create(name: "Spain", continent_id: europe.id)
china = Nation.create(name: "China", continent_id: asia.id)
sri_lanka = Nation.create(name: "Sri Lanka", continent_id: asia.id)
thailand = Nation.create(name: "Thailand", continent_id: asia.id)

manhattan = Borough.create(name: "Manhattan")
brooklyn = Borough.create(name: "Brooklyn")
queens = Borough.create(name: "Queens")
bronx = Borough.create(name: "The Bronx")
staten_island = Borough.create(name: "Staten Island")


les = Neighborhood.create(name: "Lower East Side", borough_id: manhattan.id)
wv = Neighborhood.create(name: "West Village", borough_id: manhattan.id)
noho = Neighborhood.create(name: "NoHo", borough_id: manhattan.id)

mile_end = Restaurant.create(name: "Mile End", yelp_identifier: nil, image_url: nil, yelp_page: "https://www.yelp.com/biz/mile-end-delicatessen-manhattan-new-york", price: "$$", rating: 4.0, review_count: 1021, photos: nil, demonym: "Canadian", origin_nation: canada.name, nation_id: canada.id, neighborhood_id: noho.id)
barrio_chino = Restaurant.create(name: "Barrio Chino", yelp_identifier: nil, image_url: nil, yelp_page: "https://www.yelp.com/biz/barrio-chino-new-york", price: "$$$", rating: 4.5, review_count: 127, photos: nil, demonym: "Mexican", origin_nation: mexico.name, nation_id: mexico.id, neighborhood_id: les.id)
casa_mezcal = Restaurant.create(name: "Casa Mezcal", yelp_identifier: nil, image_url: nil, yelp_page: "https://www.yelp.com/biz/casa-mezcal-new-york", price: "$$", rating: 4.0, review_count: 893, photos: nil, demonym: "Mexican", origin_nation: mexico.name, nation_id: mexico.id, neighborhood_id: les.id)
barraca = Restaurant.create(name: "Barraca", yelp_identifier: nil, image_url: nil, yelp_page: "https://www.yelp.com/biz/barraca-new-york", price: "$$$$", rating: 4.5, review_count: 893, photos: nil, demonym: "Spanish", origin_nation: spain.name, nation_id: spain.id, neighborhood_id: wv.id)
dumpling = Restaurant.create(name: "China North Dumpling", yelp_identifier: nil, image_url: nil, yelp_page: "https://www.yelp.com/biz/china-north-dumpling-new-york-2", price: "$", rating: 3.5, review_count: 204, photos: nil, demonym: "Chinese", origin_nation: china.name, nation_id: china.id, neighborhood_id: les.id)
kottu = Restaurant.create(name: "Kottu House", yelp_identifier: nil, image_url: nil, yelp_page: "https://www.yelp.com/biz/kottu-house-new-york", price: "$$", rating: 4.0, review_count: 243, photos: nil, demonym: "Sri Lankan", origin_nation: sri_lanka.name, nation_id: sri_lanka.id, neighborhood_id: les.id)
sticky_rice = Restaurant.create(name: "Stick Rice", yelp_identifier: nil, image_url: nil, yelp_page: "https://www.yelp.com/biz/sticky-rice-new-york", price: "$$", rating: 4.5, review_count: 1021, photos: nil, demonym: "Thai", origin_nation: thailand.name, nation_id: thailand.id, neighborhood_id: les.id)
