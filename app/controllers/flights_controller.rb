class FlightsController < ApplicationController

  def index
    @flight = params[:flight] ? Flight.new(search_params) : Flight.new
    if params[:flight] 
      params[:flight].delete_if { |_k, v| v.empty? }
      @flights = (params[:flight].empty? ? Flight.all : Flight.where(flight_params)).includes(:departure_airport, :arrival_airport).order(:departure).limit(1000)
    end
  end

  private

  def flight_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :departure)
  end

  def search_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :departure)
  end
end
