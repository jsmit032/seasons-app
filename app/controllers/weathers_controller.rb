class WeathersController < ApplicationController

  
  def index
    weathers = Weather.all
    render json: weathers, status: 200
  end
end