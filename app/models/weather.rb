class Weather < ActiveRecord::Base
	belongs_to :destination
	has_many :weather_to_clothing
	has_many :clothing, through: :weather_to_clothing
end
