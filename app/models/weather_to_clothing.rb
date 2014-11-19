class WeatherToClothing < ActiveRecord::Base
	belongs_to :weather
	belongs_to :clothing
end
