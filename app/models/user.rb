class User < ActiveRecord::Base
	has_many :user_to_destination
	has_many :destination through :user_to_destination 
end
