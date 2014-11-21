class UserToDestination < ActiveRecord::Base
  has_many :user
  has_many :destination
end
