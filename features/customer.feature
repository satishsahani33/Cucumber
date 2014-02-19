Feature: Managing Customer
Scenario: Creata a new Customer
	Given I have no Customers
	And I am on the listing customerinfos
	When I follow "New Customerinfo"
	And I fill in "First name" with "satish"
	And I fill in "Last Name" with "sahani"
	And I fill in "Phone Number" with "98048236466"
	And I press "create"
	Then I should see "Customerinfo was successfully created."
	Then I should see "First Name"
	Then I should see "Last Name"
	Then I should see "Phone Number"
