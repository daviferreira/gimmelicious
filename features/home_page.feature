Feature: Viewer visits the Home Page
  In order to read the page
  As a viewer
  I want to see the home page of my app
  
  Scenario: View home page
    Given I am on the home page
    Then I should see "Welcome!"
    And I should see "Follow the steps below to import your bookmarks:"
    
  Scenario: Authenticate with gimmebar
    Given I am on the home page
    Then I should see "Authenticate with gimmebar"
    And I should see a link named "Sign in!"
    
  Scenario: Load your Delicious bookmarks
    Given I am on the home page
    Then I should see "Load your delicious bookmarks"
    And I should see a field named "bookmarks"
    And I should see a button named "Upload!"
    
  Scenario: Select your import settings
    Given I am on the home page
    Then I should see "Select your import settings"
    And I should see a button named "Import!"