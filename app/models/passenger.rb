class Passenger < ApplicationRecord
  belongs_to :booking_passengers, class_name: "Booking"
end
