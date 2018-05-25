# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
josh = Customer.find_or_create_by(name: 'Joshua Burke')
kevin = Customer.find_or_create_by(name: 'Kevin Heart')
new_york = Location.find_or_create_by(name: 'Main Restaurant', city: 'New York', seats: 200 )
Reservation.find_or_create_by(time: '2018-04-18 12:00:00 UTC', seats: 2, customer_id: josh.id, location_id: new_york.id)
Reservation.find_or_create_by(time: '2018-04-18 12:15:00 UTC', seats: 6, customer_id: kevin.id, location_id: new_york.id)