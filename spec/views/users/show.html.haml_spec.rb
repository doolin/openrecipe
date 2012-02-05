require 'spec_helper'

describe "users/show" do

  before(:each) do
    @user = User.create(:email => 'foo@bar.com', :password => 'foobar')
    #@profile = Factory(:profile, :member => @member, :created_at => 1.day.ago)
    sign_in @user
  end

  it "infers the controller path" do
    controller.request.path_parameters["controller"].should eq("users")
  end

  it "infers the action" do
    controller.request.path_parameters["action"].should eq("show")
  end

  it "renders the page correctly" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Profile/)
    #rendered.should have_css("div.recipes")
    #rendered.should have_css("body#show")
    #rendered.should have_selector("body#show")
    #view.content_for(:main).should have_selector('body#show')

  end

  it "renders the user's profile page" do
    render
    rendered.should have_selector('div.profile')
  end

  xit "should have the correct <title> element " do
    render(:template => "users/show", :layout => 'layouts/application', :controller => 'users')
    p rendered
    #render
    #title = @member.firstname + " " + @member.lastname.possessive + ' Profile | Portfolio Project'
    title = 'Open Recipe'
    # have_selector is from webrat 
    # https://github.com/brynary/webrat/blob/master/lib/webrat/core/matchers/have_selector.rb
    rendered.should have_selector("title", :content => title)
    # http://blog.carbonfive.com/2011/03/02/a-look-at-specifying-views-in-rspec/
    #view.content_for(:sidebar).should have_selector('div.quote')
  end

  xit "should have a link to Twitter profile" do
    render
    rendered.should have_selector('a.twitter') do |l|
      l.should have_selector('img') #, :title => "Share this on twitter")
    end
  end

  # This is a brittle spec, depending on the word "profile" is not good.
  xit "should have a link to Google Profile" do
    render
    rendered.should have_selector('a', :content => 'profile')
    #rendered.should =~ /profile/
  end

  xit "should not display Google Profile information when no link" do
    @member.profile.gprofile_url = ''
    @member.save
    render
    #rendered.should_not have_selector('a.gprofile', :content => 'profile')
    rendered.should =~ /no Google profile given/
  end

end
