require 'net/http'
require 'json'
class HomeController < ApplicationController
  def index

  end

  def forecast
    url = OPEN_WEATHER_MAP_API_URL+"&"+"q="+params[:q]
    uri = URI(url)
    response = Net::HTTP.get(uri)
    render json: JSON.parse(response)
  end
end