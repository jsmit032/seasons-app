require 'rails_helper'

RSpec.describe User, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  before {  @user = User.create!(name: 'Randy') }
  subject { @user }



	it { should respond_to(:name) }
	it { should respond_to(:user_to_destination) }
	it { should respond_to(:destination) }

end
