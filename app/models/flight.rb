class Flight < ApplicationRecord
  belongs_to :departure_airport, class: "Airport"
  belongs_to :arrival_airport, class: "Airport" 
end
