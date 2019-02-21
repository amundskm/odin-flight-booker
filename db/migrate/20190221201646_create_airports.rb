class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.text :name
      t.integer :arrival_id
      t.integer :departure_id
      t.timestamps
    end

    add_index :airports, :arrival_id
    add_index :airports, :departure_id
  end
end
