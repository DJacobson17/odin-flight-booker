# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airport.destroy_all
Flight.destroy_all

airports = Airport.create!([{ code: "ATL" }, { code: "DFW" }, { code: "DEN" }, { code: "ORD" }])

flights = Flight.create!([
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.fetch(1).id, duration: 140, departure: "2024-02-24 07:00:00" },
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.fetch(1).id, duration: 140, departure: "2024-02-24 12:00:00" },
  { departure_airport_id: airports.fetch(1).id, arrival_airport_id: airports.fetch(2).id, duration: 125, departure: "2024-02-24 08:00:00" },
  { departure_airport_id: airports.last.id, arrival_airport_id: airports.fetch(1).id, duration: 160, departure: "2024-02-24 16:30:00" },
  { departure_airport_id: airports.last.id, arrival_airport_id: airports.first.id, duration: 120, departure: "2024-09-24 20:00:00" },
  { departure_airport_id: airports.last.id, arrival_airport_id: airports.fetch(1).id, duration: 155, departure: "2024-09-24 12:00:00" },
  { departure_airport_id: airports.fetch(2).id, arrival_airport_id: airports.fetch(1).id, duration: 120, departure: "2024-09-24 14:00:00" },

  ])
