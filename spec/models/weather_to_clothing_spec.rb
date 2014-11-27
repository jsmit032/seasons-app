require 'rails_helper'

RSpec.describe WeatherToClothing, :type => :model do
  before {  @weathertoclothing = WeatherToClothing.create!(clothing_id: 'hat', weather_id: 'cold') }
  subject { @weathertoclothing }
  #pending "add some examples to (or delete) #{__FILE__}"

	it { should respond_to(:clothing_id) }
	it { should respond_to(:weather_id) }
	it { should respond_to(:clothing) }
	it { should respond_to(:weather) }

end
