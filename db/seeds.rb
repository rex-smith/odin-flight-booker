# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

DURATIONS = {
  'SFO' => {
    'JFK' => 327,
    'ATL' => 292,
    'SLC' => 110,
    'DET' => 271,
    'BOS' => 348,
    'MIA' => 352,
    'LAX' => 175,
    'LGA' => 330,
    'PDX' => 182
  },
  'JFK' => {
    'SFO' => 327,
    'ATL' => 182,
    'SLC' => 292,
    'DET' => 121,
    'BOS' => 45,
    'MIA' => 217,
    'LAX' => 358,
    'PDX' => 329
  },
  'ATL' => {
    'SFO' => 245,
    'JFK' => 182,
    'LGA' => 180,
    'SLC' => 230,
    'DET' => 165,
    'BOS' => 221,
    'MIA' => 105,
    'LAX' => 358,
    'PDX' => 329
  },
  'SLC' => {
    'SFO' => 105,
    'JFK' => 221,
    'LAX' => 55,
    'ATL' => 204,
  },
  'DET' => {
    'SFO' => 245,
    'JFK' => 182,
    'SLC' => 230,
    'ATL' => 165,
  },
  'BOS' => {
    'SFO' => 355,
    'JFK' => 45,
    'LGA' => 35,
    'SLC' => 269,
    'ATL' => 165,
  },
  'MIA' => {
    'SFO' => 245,
    'JFK' => 182,
    'SLC' => 230,
    'ATL' => 165,
  },
  'LAX' => {
    'SFO' => 105,
    'JFK' => 229,
    'SLC' => 55,
    'ATL' => 205,
  },
  'PDX' => {
    'SFO' => 105,
    'JFK' => 245,
    'SLC' => 134,
    'ATL' => 268,
  }
}

def get_duration(origin, destination)
  DURATIONS[origin.name][destination.name]
end

def random_time
  Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
end

Airport.destroy_all
Flight.destroy_all
# Booking.destroy_all
# Passenger.destroy_all

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


Date.new(2022, 6, 4).upto(Date.new(2022, 6, 21)).each do |date|
  Airport.all.each do |origin|
    Airport.all.each do |destination|
      next if origin == destination || DURATIONS.dig(origin.name, destination.name).nil?
      2.times { Flight.create(
                              departure_airport_id: origin.id,
                              arrival_airport_id: destination.id,
                              duration: get_duration(origin, destination),
                              departing_on: date,
                              time: random_time
      )}
    end
  end
end