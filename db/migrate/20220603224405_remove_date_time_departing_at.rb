class RemoveDateTimeDepartingAt < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :departing_at
  end
end
