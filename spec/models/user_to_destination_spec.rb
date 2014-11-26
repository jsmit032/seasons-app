require 'rails_helper'
require 'shoulda/matchers'

describe UserToDestination do

	it {should respond_to(:user)}
	it {should respond_to(:destination)}
end


