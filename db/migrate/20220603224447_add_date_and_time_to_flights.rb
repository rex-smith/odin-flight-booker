class AddDateAndTimeToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :departing_on, :date
    add_column :flights, :time, :time
  end
end
