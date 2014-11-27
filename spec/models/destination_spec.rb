require 'rails_helper'
require 'shoulda/matchers'

RSpec.describe Destination, :type => :model do
  before {  @destination = Destination.create!(city: 'Miami', zipcode:33111) }
  subject { @destination }

  # pending "add some examples to (or delete) #{__FILE__}"

	it { should respond_to(:city) }
	it { should respond_to(:zipcode) }
	it { should respond_to(:user_to_destination)}
	it { should respond_to(:user) }
	
end


