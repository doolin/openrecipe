
Given /^reader is on home page$/ do
  visit('/')
end

When /^the reader clicks "([^"]*)"$/ do |link|
  click_link(link)
end

Then /^the reader should be on the "([^"]*)" page$/ do |id|
  #page.body.should =~ /foo/m # matches anything, including elements attributes
  page.should have_css("body##{id}")
end

