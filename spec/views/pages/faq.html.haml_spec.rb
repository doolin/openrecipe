require 'spec_helper'

describe "pages/faq.html.haml" do
  it "infers the controller path" do
    controller.request.path_parameters["controller"].should eq("pages")
  end

  it "infers the action" do
    controller.request.path_parameters["action"].should eq("faq")
  end

  it "has h1 Terms & Conditions" do
    render
    rendered.should have_selector('h1') do
      rendered.should match(/Fequently Asked Questions/)
    end
  end
end
