class AddIndexesEverywhere < ActiveRecord::Migration[7.0]
  def change
    add_index :flights, :departing_on
    add_index :flights, :departure_airport_id
    add_index :flights, :arrival_airport_id
  end
end
