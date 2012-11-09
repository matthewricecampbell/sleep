Feature: User tracks sleep
	As a user
	In order track my sleep time
	I want to see how long I slept

	Background:
		Given I am signed in

	Scenario: Happy Path
		Given I am on the sleepmeter page
		And I click "Sleep Tracker"
		Then I should see "I'm Awake Now"
		And 8 hours time has elapsed
		When I click "I'm Awake Now"
		Then I should see "You Just Slept: 8 Hours"
