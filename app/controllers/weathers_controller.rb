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

    # httpParty to get weather data from api
    if params[:lat]
      data = HTTParty.get("https://api.wunderground.com/api/2f0b44146ceab5a4/forecast/conditions/q/" + params[:lat].to_s + "," + params[:lng].to_s + ".json")
    else
      data = HTTParty.get("https://api.wunderground.com/api/2f0b44146ceab5a4/forecast/conditions/q/" + params[:zip].to_s + ".json")
    end
    @temp =  data.parsed_response["current_observation"]["temp_f"].to_i
    @condition = data.parsed_response["current_observation"]["weather"]
    # Variable for css styling
    @bckgrdCondition = data.parsed_response["current_observation"]["weather"].parameterize

    @city = data.parsed_response["current_observation"]["display_location"]["city"]
    @temphi = data.parsed_response["forecast"]["simpleforecast"]["forecastday"][0]["high"]["fahrenheit"]
    @templo = data.parsed_response["forecast"]["simpleforecast"]["forecastday"][0]["low"]["fahrenheit"]
    @rain = data.parsed_response["forecast"]["simpleforecast"]["forecastday"][0]["pop"]
    @snow = data.parsed_response["forecast"]["simpleforecast"]["forecastday"][0]["snow_day"]["in"]
    @wind = data.parsed_response["current_observation"]["wind_string"]

    data = {temp: @temp, condition: @condition, city: @city, temphi: @temphi, templo: @templo, rain: @rain, snow: @snow, wind: @wind, bckgrdCondition: @bckgrdCondition }

    render json: data, status: 200

  end

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
