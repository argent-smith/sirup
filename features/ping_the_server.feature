Feature: Ping the server
  As a server admin
  In order to check if SIP server is alive
  I want to see any kind of response from the server

  Scenario: Try to register
    Given I've started the SIP client
    And I've started a Session in it
    And I've entered server's address as "sip.rtelekom.net"
    And I've entered SIP login as "sirup"
    And I've entered SIP password as "1FDQDGYo"
    When I send "REGISTER" message
    Then I should get a result from server
