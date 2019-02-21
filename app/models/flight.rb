class Flight < ApplicationRecord
  belongs_to :arrivals, class_name: "Airport"
  belongs_to :departures, class_name: "Airport"
end
