class FlightsController < ApplicationController

  def index
    @flights = Flight.all
    @departure_airports = Airport.where(:id => Flight.pluck(:departure_airport_id))
    @arrival_airports = Airport.where(:id => Flight.pluck(:arrival_airport_id))
  end

  def filter
    @flights = Flight.where("departure_airport_id = ?",  params[:departure_airport_id])
                      # .where("arrival_airport_id = ?",  params[:flight][:arrival_airport_id])
                      # .where("start_time = ?",  params[:flight][:start_time])
    respond_to do |f|
      f.html {redirect_to flights_url}
      f.js
    end
  end
end
