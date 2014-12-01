require 'rails_helper'
# require_relative '../../app/models/clothing.rb'

RSpec.describe Clothing, :type => :model do

	before :each do
		@clothing = Clothing.new(clothing_type: "T-shirt")
	end

	# describes what should be happing when we create a new item of clothing
	describe "#new" do
		it "return an item of Clothing" do
			expect(@clothing).to be_a(Clothing)
		end

		it "should have a clothing_type" do
			expect(@clothing.clothing_type).to eq("T-shirt")
		end

	end
describe Clothing do
	 it {should respond_to(:clothing_type)}
	 it {should respond_to(:category_id)}
 	end
end
