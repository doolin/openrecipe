
When /^the user clicks "([^"]*)"$/ do |link|
  click_link(link)
end

When /^is taken to the sign in page$/ do
  page.should have_css("body.devise-sessions.new")
end

Then /^is taken to the New Recipe page$/ do
  page.should have_css("body.recipes.new")
end

