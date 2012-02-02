require 'spec_helper'

describe "pages/index.html.haml" do
  it "infers the controller path" do
    controller.request.path_parameters["controller"].should eq("pages")
  end

  it "infers the action" do
    controller.request.path_parameters["action"].should eq("index")
  end

  it "has temporary text" do
    render
    rendered.should have_selector('p') do
      rendered.should match(/Main text in app/)
    end
  end
end
