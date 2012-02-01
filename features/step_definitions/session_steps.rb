
Given /^a user is not signed in$/ do
  visit('/users/sign_out') # ensure that at least
end

Then /^the user signs in$/ do
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!

  visit '/users/sign_in'
  fill_in "user_email", :with=>email
  fill_in "user_password", :with=>password
  click_button "Sign in"
end

Then /^is directed to the user's show page$/ do
  page.should have_css("div.recipes")
end

Given /^a user is signed in$/ do
  step %{the user signs in}
end

Then /^the user signs out$/ do
  step %{a user is not signed in}
end

# TODO: Refactor to combine with frontpage step
Then /^is directed to the landing page$/ do
  page.should have_css("body#index")
end
