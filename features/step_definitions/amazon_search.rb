Given /^a user at amazon.com$/ do
  @browser = Selenium::WebDriver.for :firefox
  @browser.get("http://www.amazon.com")
end

When /^they search for "([^"]*)"$/ do |arg|
  @browser.find_element(:name=>"field-keywords").send_keys "#{arg}"
  @browser.find_element(:class=>"nav-submit-input").send_key :return
end

Then /^the results return for "([^"]*)"$/ do |arg|
  @browser.find_element(:id=>"breadCrumb") == arg
end