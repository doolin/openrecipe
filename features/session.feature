Feature: Users sign in and sign out

  The Sessions features handles page flow corresponding
  to the Devise model of user authentication. Succinctly,
  these scenarios describe page flow for signed in users,
  and what happens when a user signs out.

  Scenario: User signs in
    Given a user is not signed in
    Then the user signs in
    #Then show me the page
    And is directed to the user's show page

  Scenario: User signs out
    Given a user is signed in
    Then the user signs out
    And is directed to the landing page
