require 'spec_helper'

describe "recipes/show" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :title => "Title",
      :instructions => "MyText"
    ))
  end

  it "infers the controller path" do
    controller.request.path_parameters["controller"].should eq("recipes")
  end

  it "infers the action" do
    controller.request.path_parameters["action"].should eq("show")
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
