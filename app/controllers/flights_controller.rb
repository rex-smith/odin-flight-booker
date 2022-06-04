class FlightsController < ApplicationController
  def index
    @departure_airports = Flight.all.map{ |flight| [ flight.departure_airport.name, flight.departure_airport.id ]}.uniq
    @arrival_airports = Flight.all.map{ |flight| [ flight.arrival_airport.name, flight.arrival_airport.id ]}.uniq
    @departure_dates = Flight.all.order(:departing_on).map { |flight| [flight.departing_on.strftime("%a, %d %b %Y"), flight.departing_on] }.uniq
    @num_passengers = (1..4).map{ |i| [i, i] }

    # Verifying params sent through and finding available flights
    @flight_results = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id], departing_on: params[:departing_on])

  end

end

