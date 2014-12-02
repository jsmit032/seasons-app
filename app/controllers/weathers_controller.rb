class WeathersController < ApplicationController
  respond_to :html, :json

  # pull in database information
  # what table do we need to pull???
  def index
    weathers = Weather.all
    render json: weathers, status: 200
  end

  def assign_TempCategory
  	case @temp.to_i
  	when -80..32 
     "freezing"
  	when 33..40 
     "shivering"
  	when 41..50 
     "cold"
  	when 51..60 
     "chilly"
  	when 61..70 
     "average"
  	when 71..80 
     "warm"
  	when 81..90 
     "hot"
  	when 91..134 
     "dying"
    end
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
    @temp =  data.parsed_response["current_observation"]["temp_f"].to_i
    @condition = data.parsed_response["current_observation"]["weather"]
    @city = data.parsed_response["current_observation"]["display_location"]["city"]
    # @temphi = data.parsed_response forecast.simpleforecast.forecastday[0].high.fahrenheit
    # @templo = data.parsed_response forecast.simpleforecast.forecastday[0].low.fahrenheit
    # @rain = data.parsed_response forecast.simpleforecast.forecastday[0].pop
    # @snow = data.parsed_response orecast.simpleforecast.forecastday[0].snow_day.in
    # @wind = data.parsed_response current_observation.wind_string

    data = {temp: @temp, condition: @condition, city: @city}

    render json: data, status: 200

    #take that data and input it into decision engine




    #use the categories returned from decision engine to search db
    #for matching articles of clothing

    #return those matches or recommendations

  end

  def getClothing
    if params[:weather]
      @categoryRec = Category.find_by name: params[:weather].to_s
      items = @categoryRec.clothings

      render json: items, status: 200
    end
  end

  def clothing_suggestion
 	# use parsed info from api to return clothing suggestions from database

  end

end
