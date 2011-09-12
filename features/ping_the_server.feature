Feature: Ping the server
  In order to check if SIP server is alive
  As a server admin
  I want to see any kind of response from the server

  Scenario: Try to register
    Given I've instantiated the SIP client
    And I've entered server's address
    And I've entered SIP login
    And I've entered SIP password
    When I send REGISTER message
    Then I should get a result from server
