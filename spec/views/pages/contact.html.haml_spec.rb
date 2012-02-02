require 'spec_helper'

describe "pages/contact" do
  it "infers the controller path" do
    controller.request.path_parameters["controller"].should eq("pages")
  end

  it "infers the action" do
    controller.request.path_parameters["action"].should eq("contact")
  end

  it "has h1 Contact" do
    render
    rendered.should have_selector('h1', :content => 'Contact') do
      rendered.should match(/Contact/)
    end
  end
end
