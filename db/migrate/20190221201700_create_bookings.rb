class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :flight_id
      t.integer :passenger_id
      t.timestamps
    end

    add_index :bookings, :flight_id
    add_index :bookings, :passenger_id
  end
end
