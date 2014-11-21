class Destination < ActiveRecord::Base
	belongs_to :user_to_destination
	belongs_to :user, through :user_to_destination
end
