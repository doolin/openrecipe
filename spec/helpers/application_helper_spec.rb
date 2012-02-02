require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the PagesHelper. For example:
#
# describe PagesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe ApplicationHelper do

  xit "should generate correct body class and id" do
    render :layout => 'layouts/application', :template => 'pages/index', :controller => 'pages', :action => 'index'
  end

end
