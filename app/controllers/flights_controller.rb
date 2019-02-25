class FlightsController < ApplicationController

  def index
    @flights = Flight.all
    @departure_airports = Airport.where(:id => Flight.pluck(:departure_airport_id))
    @arrival_airports = Airport.where(:id => Flight.pluck(:arrival_airport_id))
    @booking = Booking.new
  end

  def filter
    @flights = Flight.where(:departure_airport_id =>  params[:departure_airport_id])
                       .where(:arrival_airport_id =>  params[:arrival_airport_id])
                       .where(:start_time =>  params[:start_time])
    @passenger_number = params[:passenger_number]
    respond_to do |f|
      f.html {redirect_to flights_url}
      f.js
    end
  end
end
