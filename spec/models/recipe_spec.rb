require 'spec_helper'

describe Recipe do

  before(:each) do
    @user = User.create(:email => 'foo@bar.com', :password => 'foobar')
    @attr = { :title => 'apple strudel' }
  end

  it "should create a new instance given valid attributes" do
    @user.recipes.create!(@attr)
    @user.recipes.first.should be_valid
  end

  describe "user associations" do
    before(:each) do
      @recipe = @user.recipes.create(@attr)
    end

    it "should have a user attribute" do
      @recipe.should respond_to(:user)
    end

    it "should have the correct associated user" do
      #@project.member_id.should == @member.id
      @recipe.user.should == @user
    end
  end

end
