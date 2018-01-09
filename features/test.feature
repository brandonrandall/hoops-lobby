Feature: Find the Hoops Lobby Website
Scenario: Search a website in google
 Given I am on the Google homepage
 When I will search for "hoops-lobby/heroku.com"
 Then I should see "teams(button)"
 Then I will click the teams button
 Then I will wait for 5 seconds
 Then I should see "(all kinds of teams)"
