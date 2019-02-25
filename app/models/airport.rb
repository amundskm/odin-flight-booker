class Airport < ApplicationRecord

  #find all Flights with the arrival_airport_id of this airport
  def arriving_flights
    Flight.where(:arrival_airport_id == :id)
  end

end
