# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.destroy_all

Airport.create!([{
  name: "SFO"
},
{
  name: "JFK"
},
{
  name: "ATL"
},
{
  name: "SLC"
},
{
  name: "DET"
},
{
  name: "BOS"
},
{
  name: "MIA"
},
{
  name: "LAX"
},
{
  name: "LGA"
},
{
  name: "PDX"
}])

p "Created #{Airport.count} airports"

Flight.destroy_all

Flight.create!([
  { departure_airport_id: 1, arrival_airport_id: 2, duration: '04:45:00', departing_at: '2022-07-21 07:35:00' },
  { departure_airport_id: 2, arrival_airport_id: 1, duration: '05:15:00', departing_at: '2022-07-21 18:20:00' },
  { departure_airport_id: 1, arrival_airport_id: 2, duration: '04:45:00', departing_at: '2022-07-22 07:35:00' },
  { departure_airport_id: 1, arrival_airport_id: 2, duration: '04:45:00', departing_at: '2022-07-23 07:35:00' },
  { departure_airport_id: 1, arrival_airport_id: 2, duration: '04:45:00', departing_at: '2022-07-26 07:35:00' },
  { departure_airport_id: 1, arrival_airport_id: 2, duration: '04:45:00', departing_at: '2022-07-28 07:35:00' },
  { departure_airport_id: 2, arrival_airport_id: 1, duration: '05:15:00', departing_at: '2022-07-26 18:20:00' },
  { departure_airport_id: 1, arrival_airport_id: 3, duration: '04:15:00', departing_at: '2022-07-21 10:40:00' },
  { departure_airport_id: 1, arrival_airport_id: 3, duration: '04:15:00', departing_at: '2022-07-23 10:40:00' },
  { departure_airport_id: 1, arrival_airport_id: 3, duration: '04:15:00', departing_at: '2022-07-24 10:40:00' },
  { departure_airport_id: 1, arrival_airport_id: 3, duration: '04:15:00', departing_at: '2022-07-27 10:40:00' },
  { departure_airport_id: 1, arrival_airport_id: 4, duration: '01:45:00', departing_at: '2022-07-22 12:15:00' },
  { departure_airport_id: 1, arrival_airport_id: 4, duration: '01:45:00', departing_at: '2022-07-24 12:15:00' },
  { departure_airport_id: 1, arrival_airport_id: 4, duration: '01:45:00', departing_at: '2022-07-25 12:15:00' },
  { departure_airport_id: 1, arrival_airport_id: 4, duration: '01:45:00', departing_at: '2022-07-22 16:00:00' },
  { departure_airport_id: 1, arrival_airport_id: 4, duration: '01:45:00', departing_at: '2022-07-21 18:25:00' },
  { departure_airport_id: 2, arrival_airport_id: 3, duration: '02:30:00', departing_at: '2022-07-21 08:45:00' },
  { departure_airport_id: 2, arrival_airport_id: 3, duration: '02:30:00', departing_at: '2022-07-21 10:45:00' },
  { departure_airport_id: 2, arrival_airport_id: 3, duration: '02:30:00', departing_at: '2022-07-25 08:45:00' },
  { departure_airport_id: 3, arrival_airport_id: 1, duration: '04:15:00', departing_at: '2022-07-23 07:35:00' },
  { departure_airport_id: 3, arrival_airport_id: 1, duration: '04:15:00', departing_at: '2022-07-23 07:35:00' },
  { departure_airport_id: 3, arrival_airport_id: 1, duration: '04:15:00', departing_at: '2022-07-25 07:35:00' },
  { departure_airport_id: 3, arrival_airport_id: 4, duration: '03:35:00', departing_at: '2022-07-21 13:35:00' },
  { departure_airport_id: 3, arrival_airport_id: 4, duration: '03:35:00', departing_at: '2022-07-22 13:35:00' },
  { departure_airport_id: 3, arrival_airport_id: 4, duration: '03:35:00', departing_at: '2022-07-23 13:35:00' },
  { departure_airport_id: 3, arrival_airport_id: 4, duration: '03:35:00', departing_at: '2022-07-23 16:35:00' },
  { departure_airport_id: 3, arrival_airport_id: 4, duration: '03:35:00', departing_at: '2022-07-25 13:35:00' }
  ])