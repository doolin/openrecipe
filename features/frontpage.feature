Feature: The front page header and footer has certain required links

  The front page, header and footer all have certain required links
  which are boring and tedious to keep track of implementing and
  ensuring correct targeting. This feature simply ensures those
  links exist and point at the right pages.
  
  Scenario: Reader visits About page
    Given reader is on home page
    When the reader clicks "About"
    Then the reader should be on the "About" page
    #Then show me the page
