# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+33193849037", category:"italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+33197639037", category:"italian"}
dragon_jaune = {name: "Dragon Jaune", address: "4 rue Boileau, Nantes 44000", phone_number: "+33294339037", category:"chinese"}
bouillon_nantais = {name: "Bouillon Nantais", address: "73 avenue Jean Jaures, Paris 75008", phone_number: "+33109389037", category:"french"}
as_du_falafel = {name: "L'As du Falafel", address: "3 rue des rosiers, 75001", phone_number: "+33109398277", category:"belgian"}

[dishoom, pizza_east, dragon_jaune, bouillon_nantais, as_du_falafel].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
