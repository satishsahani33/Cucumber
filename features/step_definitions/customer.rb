Given /^I have no Customers$/ do
  Customerinfo.delete_all
end
Given /^I am on the listing customerinfos$/ do
	visit('/customerinfos')
end

Then /^I should have ([0-9]+) customer$/ do |count|
  Customerinfo.count.should == count.to_i
end

When /^I follow "([^"]*)"$/ do |arg1|
	visit new_customerinfo_path
end

Then /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  fill_in("First name", :with => "Satish")
  fill_in("Last name", :with => "Sahani")
  fill_in("Phone number", :with => "9804823466")
end

When /^I press "([^"]*)"$/ do |arg1|
	click_button("Create Customerinfo")
	# click_button("Back")
end

Then /^I should see "([^"]*)"$/ do |arg1|
	 page.should have_content("Customerinfo was successfully created.")
	 page.should have_content("First name")
	 page.should have_content("Last name")
	 page.should have_content("Phone number")
end

