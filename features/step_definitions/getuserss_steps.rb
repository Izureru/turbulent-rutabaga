require 'cucumber'

When(/^I debug$/) do
  require 'pry'; binding.pry
end

Then (/^the response body should contain "([^"]*)"$/) do |body|
    expect(last_response.body).to include(body)
end