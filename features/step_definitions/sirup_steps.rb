Given /^I've started the SIP client$/ do
  @client = Sirup::SIP::Client.new
end

Given /^I've started a Session in it$/ do
  @sess = @client.new_session
end

Given /^I've entered server's address as "([^"]*)"$/ do |address|
  @sess.server = address
end

Given /^I've entered SIP login as "([^"]*)"$/ do |login|
  @sess.login = login
end

Given /^I've entered SIP password as "([^"]*)"$/ do |password|
  @sess.password = password
end

When /^I send "([^"]*)" message$/ do |msg|
  @sess.send_message msg.downcase.to_sym
end

Then /^I should get a result from server$/ do
  @sess.response.code.should_not be_nil
end

