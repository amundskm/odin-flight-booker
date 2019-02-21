class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :booking_flight_id
      t.integer :booking_passenger_id
      t.timestamps
    end

    add_index :bookings, :booking_flight_id
    add_index :bookings, :booking_passenger_id
  end
end
