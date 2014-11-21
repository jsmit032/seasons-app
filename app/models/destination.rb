class Destination < ActiveRecord::Base
	has_many :user_to_destinations
	has_many :user, through :user_to_destinations
end
