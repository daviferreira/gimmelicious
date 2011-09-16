Given /^I am on the home page$/ do
  visit "/"
end
 
Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content text
end

Then /^I should see a link named "([^"]*)"$/ do |text|
  page.should have_link text
end

Then /^I should see a field named "([^"]*)"$/ do |text|
  page.should have_field text
end

Then /^I should see a button named "([^"]*)"$/ do |text|
  page.should have_button text
end