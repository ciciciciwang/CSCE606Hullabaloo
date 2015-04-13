Feature: Administrator can log in to manage students 

  In order to manage student information
  As an administrator
  I want to log in into the system


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

	Then I want to test the record management
	When I click on "New Student"
	Then I should be on the new student page
	Then I can go back to the students page

	When I click on "Edit"
	And I change "Email" with "joe@fhsk.com"
	And I uncheck "Us citizen"
	And I select "PHD" from "Degree" 
	When I press "Update Student"
	Then I should see "Student was successfully updated"
	And I can view the new information of student
	When I click on "Back"
	Then I can go back to the students page

	When I click on "Destroy"
	And I confirm to delete the student
	Then I should see "Student was successfully destroyed."



	
	# Then I want to test the record management
	
	# When I click on "New Student"
	# Then I should be on the new student page
	# When I click on "Edit"
	# Then I should be on the edit information page

