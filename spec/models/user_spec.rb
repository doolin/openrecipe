require 'spec_helper'

describe User do

  it "should create a valid user" do
    @user = User.create(:email => 'foo@bar.com', :password => 'foobar')
    @user.should be_valid
  end

end
