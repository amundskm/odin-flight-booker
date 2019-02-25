class Flight < ApplicationRecord

  def from_airport
    Airport.find(departure_airport_id)
  end

  def to_airport
    Airport.find(arrival_airport_id)
  end

end
