Feature: User tracks sleep
	As a user
	In order track my sleep time
	I want to see how long I slept

	Background:
		Given I am signed in
@wip
	Scenario: Happy Path
		Given I am on the homepage
		And I click "I'm Going To Sleep"
		And that 8 hours have passed
		And I click "I'm Awake"
		Then I should see "You Just Slept: 8 Hours"
