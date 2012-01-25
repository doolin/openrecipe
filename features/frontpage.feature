Feature: The front page header and footer has certain required links

  The front page, header and footer all have certain required links
  which are boring and tedious to keep track of implementing and
  ensuring correct targeting. This feature simply ensures those
  links exist and point at the right pages.
  
  Scenario: Reader visits About page
    Given reader is on home page
    When the reader clicks "About"
    Then the reader should be on the "about" page
    #Then show me the page

  Scenario Outline: Reader visits nav links
    Given reader is on home page
    When the reader clicks "<anchor>"
    Then the reader should be on the "<id>" page
    #Then show me the page

    Scenarios: Let's go visit nav links
    | anchor  | id      |
    | About   | about   |
    | Recipes | recipes |
    | Sign in | sign_in |
    | Sign up | sign_up |

  Scenario Outline: Reader visits footer links
    Given reader is on home page
    When the reader clicks "<anchor>"
    Then the reader should be on the "<id>" page
    #Then show me the page

    Scenarios: Let's go visit footer links
    | anchor  | id      |
    | Terms   | terms   |
    | Team    | team    |
    | FAQ     | faq     |
    | Privacy | privacy |
    | Contact | contact |
