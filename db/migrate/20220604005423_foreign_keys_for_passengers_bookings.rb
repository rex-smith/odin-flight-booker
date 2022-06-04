class ForeignKeysForPassengersBookings < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :passengers_bookings, :passengers, column: :passenger_id
    add_foreign_key :passengers_bookings, :bookings, column: :booking_id
  end
end
