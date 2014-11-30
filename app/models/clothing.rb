class Clothing < ActiveRecord::Base
	has_many :clothing_categories
	has_many :categories, through: :clothing_categories
	# has_many :weather_to_clothing
	# has_many :weather, through: :weather_to_clothing
	
end
