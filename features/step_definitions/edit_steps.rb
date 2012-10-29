Given /^I am at a random page$/ do
  visit RandomPage
end

When /^I click edit$/ do
  on(RandomPage).edit
end

Then /^edit page should open$/ do
  @browser.url.should match "#{Regexp.escape('&action=edit')}$"
  on(EditPage).save_element.should exist
end
