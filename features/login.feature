Feature: User login
Scenario: User logs in
  Given I am on the welcome page
  When I log in
  Then I should see "Welcome, Brandon"
