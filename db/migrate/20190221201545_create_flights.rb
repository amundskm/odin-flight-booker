class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :departure_airport_id
      t.integer :arrival_airport_id
      t.datetime :start_time
      t.timestamps
    end
    add_index :flights, :departure_airport_id
    add_index :flights, :arrival_airport_id

  end
end
