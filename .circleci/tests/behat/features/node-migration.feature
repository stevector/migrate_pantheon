Feature: Node migration
	In order to verify migrations ran at all
	As a maintainer
	I need to see that a node has moved from Drupal

	Scenario: Node 1
		Given I am on "node/1"
		Then print current URL
		Then I should see "test node made on D7"
		Then the response should contain "<img property=\"schema:image\" src=\"/sites/default/files/field/image/drops.png\""
		Then I go to "sites/default/files/field/image/drops.png"
		Then the response status code should be 200
