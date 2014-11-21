class Destination < ActiveRecord::Base
	belongs_to :user_to_destinations
	belongs_to :user, through :user_to_destinations
end
