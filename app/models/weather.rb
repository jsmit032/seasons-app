class Weather < ActiveRecord::Base
  belongs_to :clothing
  belongs_to :destination
end
