require 'rails_helper'

RSpec.describe Weather, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before { @weather = Weather.create!(weather_type: 'cold') }
  subject { @weather }



	it { should respond_to(:weather_type) }
	it { should respond_to(:weather_to_clothing) }
	it { should respond_to(:clothing) }
	
	
	
end
