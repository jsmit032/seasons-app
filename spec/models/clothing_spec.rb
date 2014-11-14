require 'rails_helper'
# require_relative '../../app/models/clothing.rb'

RSpec.describe Clothing, :type => :model do

	before :each do
		@clothing = Clothing.new
	end

	# describes what should be happing when we create a new item of clothing
	describe "#new" do
		it "return an item of Clothing" do
			expect(@clothing).to be_a(Clothing)
		end

		it "should have a clothing_type" do
			expect(@clothing.clothing_type).to eq("T-shirt")
		end

		it "should have a weather_type" do
			expect(@clothing.weather_type).to eq("warm")
		end

	end
end
