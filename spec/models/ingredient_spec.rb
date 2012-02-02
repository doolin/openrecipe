require 'spec_helper'

describe Ingredient do

  it "should create a valid ingredient" do
    ing = Ingredient.create(:type => 'orange')
    ing.should be_valid
  end

end
