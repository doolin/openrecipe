require 'spec_helper'

describe "pages/faq" do
  it "infers the controller path" do
    controller.request.path_parameters["controller"].should eq("pages")
  end

  it "infers the action" do
    controller.request.path_parameters["action"].should eq("faq")
  end

  it "has h1 Frequently Asked Questions" do
    render
    rendered.should =~ /Frequently Asked Questions/
  end
end
