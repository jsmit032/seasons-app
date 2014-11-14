class Clothing < ActiveRecord::Base
	attr_accessor :clothing_type, :weather_type

	def clothing_type
		"T-shirt"
	end

	def weather_type
		"warm"
	end
end
