class RemoveDepartingOnFromFlights < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :departing_on
  end
end
