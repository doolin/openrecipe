require 'spec_helper'

describe "ingredients/edit" do
  before(:each) do
    @ingredient = assign(:ingredient, stub_model(Ingredient,
      :recipe_id => 1,
      :quantity => "MyString",
      :unit => "MyString",
      :type => ""
    ))
  end

  it "renders the edit ingredient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ingredients_path(@ingredient), :method => "post" do
      assert_select "input#ingredient_recipe_id", :name => "ingredient[recipe_id]"
      assert_select "input#ingredient_quantity", :name => "ingredient[quantity]"
      assert_select "input#ingredient_unit", :name => "ingredient[unit]"
      assert_select "input#ingredient_type", :name => "ingredient[type]"
    end
  end
end
