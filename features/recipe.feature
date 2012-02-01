Feature: Users add recipes

  Users should be able to add recipes using a menu
  link in the nav bar, or some other widget, from any
  convenient place in the application.
    
  Scenario: User not signed in directed to sign in page
    Given a user is not signed in
    When the user clicks "New Recipe"
    And is taken to the sign in page

  Scenario: User signed in directed to New Recipe page
    Given a user is signed in
    Then the user clicks "New Recipe"
    And is taken to the New Recipe page
