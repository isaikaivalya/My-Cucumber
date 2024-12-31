Feature: E2E API and UI Tests

  Scenario: Verify User Login
    Given I have a valid API token
    When I send a POST request to "/login" with valid credentials
    Then I should receive a 200 response

    Given I navigate to the login page
    When I enter valid username and password
    And I click on the login button
    Then I should see the dashboard page
