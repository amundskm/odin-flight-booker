class Airport < ApplicationRecord
  has_many :arrivals
  has_many :departures
end
