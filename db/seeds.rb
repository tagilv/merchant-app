# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying Warehouses"
Warehouse.destroy

puts "creating warehouses"
Warehouse.create(name:'Supermall', location: 'London')
Warehouse.create(name:'Nova', location: 'Birmingham')
Warehouse.create(name:'Kaufland', location: 'Leeds')
Warehouse.create(name:'Illum', location: 'London')
puts "Warehouses created"
