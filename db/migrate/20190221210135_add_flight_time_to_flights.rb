class AddFlightTimeToFlights < ActiveRecord::Migration[5.2]
  def change
    add_column :flights, :flight_time, :string
  end
end
