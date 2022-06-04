class RemovePassengerIdAddNumPassengersToBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :passenger_id
    add_column :bookings, :passengers, :integer
  end
end
