class WeatherToClothing < ActiveRecord::Base
	has_many :weather
	has_many :clothing
end
