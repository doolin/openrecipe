require 'spec_helper'

describe AdminUser do

  it "should create a valid admin user" do
    au = AdminUser.create(:email => 'foo@bar.com')
    au.should be_valid
  end

end
