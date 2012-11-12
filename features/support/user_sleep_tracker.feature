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
		And I click "I'm Awake Now"
		And 8 hours time has elapsed
		When I click "I'm Awake Now"
		Then I should see "You Just Slept: 8 Hours"
