class WeathersController < ApplicationController
  respond_to :html, :json

  # pull in database information
  # what table do we need to pull???
  def index
    weathers = Weather.all
    render json: weathers, status: 200
  end

  def receiveZip
    #expecting zip code param, this means just a regular form
    #to post from the page

    #httpParty to get weather data from api
    if params[:lat]
      data = HTTParty.get("https://api.wunderground.com/api/2f0b44146ceab5a4/forecast/conditions/q/" + params[:lat].to_s + "," + params[:lng].to_s + ".json")
    else
      data = HTTParty.get("https://api.wunderground.com/api/2f0b44146ceab5a4/forecast/conditions/q/" + params[:zip].to_s + ".json")
    end

    # info needed for day clothing
    @temp =  data.parsed_response["current_observation"]["temp_f"].to_i
    @condition = data.parsed_response["current_observation"]["weather"]
    @city = data.parsed_response["current_observation"]["display_location"]["city"]
    @temphi = data.parsed_response["forecast"]["simpleforecast"]["forecastday"][0]["high"]["fahrenheit"]
    @templo = data.parsed_response["forecast"]["simpleforecast"]["forecastday"][0]["low"]["fahrenheit"]
    @rain = data.parsed_response["forecast"]["simpleforecast"]["forecastday"][0]["pop"]
    @snow = data.parsed_response["forecast"]["simpleforecast"]["forecastday"][0]["snow_day"]["in"]
    @wind = data.parsed_response["current_observation"]["wind_string"]

    # info needed for night clothing
    # @nighttemp == @templo
    @nightrain = data.parsed_response["forecast"]["simpleforecast"]["forecastday"][0]["qpf_night"]["in"]
    @nightsnow = data.parsed_response["forecast"]["simpleforecast"]["forecastday"][0]["snow_night"]["in"]
    @nightwind = data.parsed_response["forecast"]["simpleforecast"]["forecastday"][0]["avewind"]["mph"]

    data = {temp: @temp, condition: @condition, city: @city, temphi: @temphi, templo: @templo, rain: @rain, snow: @snow, wind: @wind, nightrain: @nightrain, nightsnow: @nightsnow, nightwind: @nightwind }

    render json: data, status: 200

  end

  # returns clothing for weather and temperature (case sensitive based on what was written in database)
  def getClothing
    if params[:weather]
      items = Category.find_by name: params[:weather].to_s
      @article = items.clothings

      items = {article: @article}

      # @categoryRec = Category.find_by name: params[:weather].to_s
      # items = @categoryRec.clothings

      render json: items, status: 200
    end
  end

end
