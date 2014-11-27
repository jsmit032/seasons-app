class Destination < ActiveRecord::Base
	has_many :user_to_destination
	has_many :user, through: :user_to_destinations

end
