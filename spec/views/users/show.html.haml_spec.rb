require 'spec_helper'

describe "users/show" do

  it "infers the controller path" do
    controller.request.path_parameters["controller"].should eq("users")
  end

  it "infers the action" do
    controller.request.path_parameters["action"].should eq("show")
  end

  it "renders the page correctly" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    #rendered.should have_css("div.recipes")
    #rendered.should have_css("body#show")
    #rendered.should have_selector("body#show")
    #view.content_for(:main).should have_selector('body#show')

  end
end
