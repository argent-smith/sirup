Given /^I've instantiated the SIP client$/ do
  @client = Sirup::SIP::Client.new
end

Given /^I've entered server's address$/ do
  @client.server = "sip.rtelekom.net"
end

Given /^I've entered SIP login$/ do
  @client.login = "sirup"
end

Given /^I've entered SIP password$/ do
  @client.password = "1FDQDGYo"
end

When /^I send REGISTER message$/ do
  @client.sendRequest :register
end

Then /^I should get a result from server$/ do
  @client.response.code.should exist
end

