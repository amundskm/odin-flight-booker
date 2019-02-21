class CreatePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :passengers do |t|
      t.text :name
      t.text :address
      t.text :city
      t.text :state
      t.text :zipcode
      t.timestamps
    end
  end
end
