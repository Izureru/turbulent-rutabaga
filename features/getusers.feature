Feature: Users management
  As an admin, I want to manage users

Scenario: Get root
    Given I send a GET request to "/"
    Then the response status should be "200"
    And the response body should contain "Hello TDD!"

Scenario: Add user
	Given I send a POST request to "/users" with the following:
    | user | body |
  Then the response status should be "200"
  When I send a GET request to "/"
  And the response body should contain "1 tdd users"

Scenario: Delete users clears users
  Given I send a DELETE request to "/users"
  And I send a GET request to "/users"
  Then the JSON response should be: 
  """
  []
  """ 
  # Scenario: Adding a user with a name
  #   Given user1 exists
  #   When I send a GET request to "/"
  #   Then the response status should be "400"

  # Scenario: Name should be 8 characters long
  #   Given user1 exists
  #   When I send a GET request to "/"
  #   Then the response status should be "400"

  # Scenario: Try to POST without a body
  #   Given user1 exists
  #   When I send a GET request to "/"
  #   Then the response status should be "400"

  # Scenario: Try to POST without a body
  #   Given user1 exists
  #   When I send a GET request to "/"
  #   Then the response status should be "400"

#   clear all users
#   Given I send a DELETE request to "/"
#   count users
#   view users

#   Build an api to see how many users are coming to the next talk
#   what would you need to be able to do


# When /^I send a (GET|POST|PUT|DELETE) request (?:for|to) "([^"]*)"(?: with the following:)?$/ do

# Then /^the response status should be "([^"]*)"$/ do

# Then /^the JSON response should (not)?\s?have "([^"]*)" with the text "([^"]*)"$/ do

# Then /^the JSON response should be:$/ do

# Then /^the JSON response should have "([^"]*)" with a length of (\d+)$/ do