airports =[]
10.times do |n|
  name = Faker::Alphanumeric.alpha 3
  airports << Airport.create!(name: name)
end

50.times do |n|
  departing_airport = airports.sample
  arrival_airport = airports.select{|a| a != departing_airport}.sample
  start_time = Faker::Time.between(DateTime.now, DateTime.now + 180)
  flight_time = rand(3600..43200)
  Flight.create!(departure_airport_id: departing_airport.id,
                 arrival_airport_id:   arrival_airport.id,
                 start_time: start_time,
                 flight_time: flight_time)
end
