class Clothing < ActiveRecord::Base
	has_many :weather_to_clothing
	has_many :weather, through: :weather_to_clothing
	
	attr_accessor :clothing_type, :weather_type

	def clothing_type
		"T-shirt"
	end

	def weather_type
		"warm"
	end
end
