airports =[]
10.times do |n|
  name = Faker::Alphanumeric.alpha 3
  name.upcase!
  airports << Airport.create!(name: name)
end

def flying_time
  seconds_diff = rand(3600..43200)

  hours = seconds_diff / 3600
  seconds_diff -= hours * 3600

  minutes = seconds_diff / 60
  seconds_diff -= minutes * 60

  seconds = seconds_diff

   '%02d:%02d:%02d' % [hours, minutes, seconds]
end

50.times do |n|
  departing_airport = airports.sample
  arrival_airport = airports.select{|a| a != departing_airport}.sample
  start_time = Faker::Time.between(DateTime.now, DateTime.now + 14)
  flight_time = flying_time
  3.times do
    Flight.create!(departure_airport_id: departing_airport.id,
                   arrival_airport_id:   arrival_airport.id,
                   start_time: start_time,
                   flight_time: flight_time)
  end
end
