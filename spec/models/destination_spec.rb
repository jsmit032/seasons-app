require 'rails_helper'

RSpec.describe Destination, :type => :model do
  before {  @destination = Destination.create!(city: 'Miami', zipcode: 33101) }
  subject { @destination }


  # pending "add some examples to (or delete) #{__FILE__}"



	it { should respond_to(:city) }
	it { should respond_to(:zipcode) }
	
	

end


