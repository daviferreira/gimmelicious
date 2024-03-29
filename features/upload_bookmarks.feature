Feature: Upload delicious xml files
  In order to import my bookmarks
  As a delicious user
  I want to upload my bookmarks xml file
  
  Scenario: Upload file
    Given I am on the home page
    When I upload a file with valid data
    And I click "Upload!"
    Then I should see "File successfully loaded"
    And I should see "You have 8 bookmarks under 10 tags"
