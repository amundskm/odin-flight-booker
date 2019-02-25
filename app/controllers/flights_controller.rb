class FlightsController < ApplicationController

  def index
    @flights = Flight.all
    @airports = Airport.all
    @flight = Flight.new
  end

  def filter
    @flights = Flight.where("departure_airport_id = ?",  params[:flight][:departure_airport_id])
                      # .where("arrival_airport_id = ?",  params[:flight][:arrival_airport_id])
                      # .where("start_time = ?",  params[:flight][:start_time])
    respond_to do |f|
      f.html {redirect_to flights_url}
      f.js
    end
  end
end
