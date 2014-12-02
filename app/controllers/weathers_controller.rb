class WeathersController < ApplicationController
  respond_to :html, :json

  # pull in database information
  # what table do we need to pull???
  def index
    weathers = Weather.all
    render json: weathers, status: 200
  end

  def assign_TempCategory
  	case temp
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
    data = {temp: @temp, condition: @condition, city: @city}

    render json: data, status: 200
    # @results = JSON.parse(uri.body)

    #take that data and input it into decision engine

    #use the categories returned from decision engine to search db
    #for matching articles of clothing

    #return those matches or recommendations

  end

  # retrieve data from api: 
  # # temperature => pass through assign_condition
  # # condition => get returned string condition
  # # wind_mph => return true if >5mph
  # # snow => if >0 return true
  # # p.o.p => if >30% return true

  def clothing_suggustion
 	# use parsed info from api to return clothing suggustions from database
  end

end