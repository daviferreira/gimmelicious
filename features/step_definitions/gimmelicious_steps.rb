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

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |element, text|
  fill_in element, with: text
end

When /^I upload a file with valid data$/ do
  attach_file("bookmarks", File.join(File.dirname(__FILE__), '/../files', 'bookmarks.xml'))
end

When /^I click "([^"]*)"$/ do |element|
  click_on element
end