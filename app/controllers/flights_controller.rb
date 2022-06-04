class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map{ |airport| [ airport.name, airport.id ]}
    @departure_dates = Flight.select(:departing_on).distinct.order(:departing_on).map { |flight| [flight.departing_on.strftime("%a, %d %b %Y"), flight.departing_on] }
    @num_passengers = (1..4).map{ |i| [i, i] }

    # Verifying params sent through and finding available flights
    @flight_results = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id], departing_on: params[:departing_on])

  end

end

