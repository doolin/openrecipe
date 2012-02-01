require 'spec_helper'

describe UsersController do

  before(:each) do
    #@user = Factory(:user)
    # User.new won't respond to Devise's `sign_in` method
    #@user = User.new(:email => 'foo@bar.com', :password => 'foobar')
    @user = User.create(:email => 'foo@bar.com', :password => 'foobar')
  end

  describe "GET 'show'" do
    it "should show the user" do
      # TODO: these should move to view specs...?
      #p1 = Factory(:recipe, :member => @user, :summary => "Foo bar")
      #p2 = Factory(:ecipe, :member => @user, :summary => "Baz quux")
      #@user.recipes = [p1, p2]
      get :show, :id => @user
      response.should render_template("show")
    end
  end

  describe "GET 'index'" do    
    it "signed in should redirect to user#show (show recipes)" do
      sign_in @user
      get :index
      response.should redirect_to(users_path)
    end
    it "signed out should redirect to sign in path" do
      sign_out @user
      get :index
      response.should redirect_to(new_user_session_path)
    end
  end
end