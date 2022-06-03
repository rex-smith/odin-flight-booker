class FlightsController < ApplicationController
  def index
    @departure_airports = Flight.all.departure_airports.unique.map{ |u| [ u.name, u.id ]}
    @arrival_airports = Flight.all.arrival_airports.unique.map{ |u| [ u.name, u.id ]}
    @departure_dates = Flight.all.departing_at.all.unique.to_date.map { |date| [date.strftime("%a, %d %b %Y"), date] }
    @num_passengers = (1..4).map{ |i| [i, i] }
  end

end
