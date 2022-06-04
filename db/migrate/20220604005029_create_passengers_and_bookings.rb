class CreatePassengersAndBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers_bookings do |t|
      t.belongs_to :passenger
      t.belongs_to :booking
      t.timestamps
    end
  end
end
