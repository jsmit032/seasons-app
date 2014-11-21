class User < ActiveRecord::Base
	belongs_to :user_to_destination
	belongs_to :destination through :user_to_destination 
end
