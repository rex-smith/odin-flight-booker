class FlightsController < ApplicationController
  def index
    @departure_airports = Flight.all.map{ |flight| [ flight.departure_airport.name, flight.departure_airport.id ]}.uniq
    @arrival_airports = Flight.all.map{ |flight| [ flight.arrival_airport.name, flight.arrival_airport.id ]}.uniq
    @departure_dates = Flight.all.order(:departing_at).map { |flight| [flight.departing_at.to_date.strftime("%a, %d %b %Y"), flight.departing_at.to_date] }.uniq
    @num_passengers = (1..4).map{ |i| [i, i] }

    # Verifying params sent through and finding available flights
    @flight_results = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id], departing_at: (params[:departing_at].to_datetime)..((params[:departing_at]+1).to_datetime))

  end

end

