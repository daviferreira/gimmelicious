Feature: Import settings 
  In order to import my bookmarks
  As a gimmebar user
  I want to configure my import settings 
  
  Scenario: Configure import settings 
    Given I am on the home page
    When I upload a file with valid data
    And I click "Upload!"
    Then I should see "Options"
    And I should see a field named "settings"
    And I should see "Import everything to a Delicious collection" 
    And I should see "Import everything to collections based on tags"
    And I should see "Import everything to an existing collection"
