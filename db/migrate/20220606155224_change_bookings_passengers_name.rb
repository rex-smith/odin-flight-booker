class ChangeBookingsPassengersName < ActiveRecord::Migration[7.0]
  def change
    rename_table :passengers_bookings, :bookings_passengers
  end
end
