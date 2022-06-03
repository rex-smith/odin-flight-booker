class AddDepartingAtToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :departing_at, :datetime
  end
end
