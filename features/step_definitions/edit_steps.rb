Given /^I am at a random page$/ do
  visit RandomPage
end

When /^I click edit$/ do
  on(RandomPage).edit
end

Then /^edit page should open$/ do
  on(EditPage).my_sandbox_element.when_present
  @browser.url.should match Regexp.escape('&action=edit')
end
Then /^My sandbox link should be there$/ do
  on(EditPage).my_sandbox_element.should exist
end
Then /^Save button should be there$/ do
  on(EditPage).save_element.should exist
end