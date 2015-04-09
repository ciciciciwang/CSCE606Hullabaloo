Feature: Administrator can log in to manage students 

  In order to manage student information
  As an administrator
  I want to log in into the system

# Scenario: Go to new student page
# 	Given I am on the home page
# 	When I click on "New Student"
# 	Then I should be on the new student page


Scenario: Log in with incorrect user information
	Given I am on the home page
	When I fill in "Login" with "username that does not exist"
	And I fill in "Password" with "incorrect password"
	And I press "Login"
	Then I should be on the home page
	And I should see "The login or password is not correct."

Scenario: Log in with correct user information
	Given I am on the home page
	And I enter correct user information
	And I fill in "Login" with "Jay"
	And I fill in "Password" with "123"
	When I press "Login"
	Then I should be on the listing students page
	And I should see "Welcome Jay"