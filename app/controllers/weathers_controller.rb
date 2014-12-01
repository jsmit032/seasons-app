class WeathersController < ApplicationController

  # pull in database information
  # what table do we need to pull???
  def index
    weathers = Weather.all
    render json: weathers, status: 200
  end

  def assign_TempCategory
  	case weathers.current_observation.temp_f.to_i
  	when -80..32 return "freezing"
  	when 33..40 return "shivering"
  	when 41..50 return "cold"
  	when 51..60 return "chilly"
  	when 61..70 return "average"
  	when 71..80 return "warm"
  	when 81..90 return "hot"
  	when 91..134 return "dying"
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