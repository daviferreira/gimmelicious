Feature: Viewer visits the Home Page
  In order to read the page
  As a viewer
  I want to see the home page of my app
  
  Scenario: View home page
    Given I am on the home page
    Then I should see "Welcome!"
    And I should see "Follow the steps below to import your bookmarks:"