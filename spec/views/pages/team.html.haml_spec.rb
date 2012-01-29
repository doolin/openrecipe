require 'spec_helper'

describe "pages/team.html.haml" do
  it "infers the controller path" do
    controller.request.path_parameters["controller"].should eq("pages")
  end

  it "infers the action" do
    controller.request.path_parameters["action"].should eq("team")
  end

  it "has h1 Terms & Conditions" do
    render
    rendered.should have_selector('h1') do
      rendered.should match(/Team/)
    end
  end
end
