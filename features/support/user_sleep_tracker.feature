
Feature: User tracks sleep
	As a user
	In order track my sleep time
	I want to see how long I slept

	Background: 
		Given there is a user "matt@example.com" with password "foobar"
	    When I go to the homepage
	    And I click "Sign In"
	    And I fill in "matt@example.com" for "Email"
	    And I fill in "foobar" for "Password"
	    And I click "Sign in"
		And I click "I'm Going To Sleep"
		And that 8 hours have passed
		And I click "I'm Awake"
		Then I should see "Sleep Time: 08:00:00"

	Scenario: Logged Out Users
		When I sign out
		Then I should see "You need to sign in or sign up before continuing."
		And I should not see "Sleep Time: 08:00:00"

	Scenario: Logged In New User Should Not See
		When I sign out
		Given there is a user "tim@example.com" with password "foobar"
	    When I go to the homepage
	    And I click "Sign In"
	    And I fill in "tim@example.com" for "Email"
	    And I fill in "foobar" for "Password"
	    And I click "Sign in"
		Then I should be on the home page
		And I should not see "Sleep Time: 08:00:00"

	Scenario: 
		When I click "I'm Going To Sleep"
		And that 8 hours have passed
		And I click "I'm Awake"
		Then I should see "Sleep Time: 08:00:00"
		And I should see "You've slept a total of: 16:00:00 hours since you started using Sleep Meter!"



