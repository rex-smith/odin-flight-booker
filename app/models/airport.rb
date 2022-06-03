class Airport < ApplicationRecord
  has_many :flights, foreign_key: :arrival_airport
  has_many :flights, foreign_key: :departure_airport
end
