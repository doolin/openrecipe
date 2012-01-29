require 'spec_helper'

describe "pages/index.html.haml" do
  it "infers the controller path" do
    controller.request.path_parameters["controller"].should eq("pages")
  end

  it "infers the action" do
    controller.request.path_parameters["action"].should eq("index")
  end

  xit "has h1 Terms & Conditions" do
    render
    rendered.should have_selector('h1') do
      rendered.should match(/Terms & Conditions/)
    end
  end
end
