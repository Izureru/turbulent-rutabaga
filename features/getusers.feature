Feature: Get message data
  As a system I want to see all messages

Scenario: Try to add user without name
    Given I send a GET request to "/"
    Then the response status should be "200"

Scenario: Try to add a user
	Given I send a POST request to "/" with the following: "name":"Albert"
  	When I send a GET request to "/"
  	Then the JSON response should have "users" with a length of 1

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