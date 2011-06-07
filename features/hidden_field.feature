Feature: Hidden Fields

  Background:
    Given I am on the static elements page
  
  Scenario: Setting and getting a value from a hidden field
    When I retrieve the hidden field element
    Then I should see the hidden field contains "12345"

  Scenario Outline: Locating hidden fields on the Page
    When I search for the hidden field by "<search_by>"
    Then hidden field element should contains "12345"

  Scenarios:
    | search_by |
    | id        |
    | class     |
    | name      |
    | xpath     |  
    | css       |
    | tag_name  |

  @watir_only
  Scenario Outline: Locating hidden fields on Watir only
    When I search for the hidden field by "<search_by>"
    Then hidden field element should contains "12345"

  Scenarios:
    | search_by |
    | index     |
    | text      |
