Feature: Manage user_sessions
  In order to manage my website with Magnetism
  I
  want to login

  Scenario: Logging into Magnetism
    Given I have a login
    Given I am on the new user_session page
    When I fill in "user_login" with "jsmith"
    When I fill in "user_password" with "password"
    And I press "Sign In"
    Then I should be on the user_root page
