Feature: Manage sites
  In order 
  [stakeholder]
  wants [behaviour]

  Scenario: Create new site
    Given I have seed data
    Given I have a login

    Given I am on the new user_session page
    When I fill in "user_login" with "jsmith"
    When I fill in "user_password" with "password"
    And I press "Sign In"
    Then I should be on the user_root page

    When I follow "Manage"
    Then I should be on the admin_manage page

    When I follow "New Theme"
    And I fill in "theme_name" with "Foo Theme"
    And I press "Create Theme"
    Then I should be on the latest admin_manage_theme page
