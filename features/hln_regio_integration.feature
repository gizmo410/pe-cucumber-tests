Feature: @HLN_Regio integration on HLN

  Link: https://atlassian.persgroep.net/jira/browse/HRP-182
  Waterfall steps:
  1. Show favourite city from profile
    * Conditions: user logged in and has a favourite city
  2. Show favourite city from cookie
    * Conditions: user has a cookie/local storage with its favourite city. Cfr https://atlassian.persgroep.net/jira/browse/HRP-71
  3. Show user's home address
    * Conditions: user logged in and has a home address
  4. Show latest city searched from cookie
    * Conditions: user has a cookie/local storage with its latest city searched.
  5. Show city based on IP
    * Conditions: None of the above conditions met. If IP is localized outside the Flanders, we show Brussels.
  6. Show random city
    * Conditions: None of the above conditions met (IP cannot be matched to a location)


  Scenario: User is eligible for step 1
    Given User is logged in
    And User has Gent as favourite city
    When I navigate to HLN homepage
    And I scroll to the Regio Integration
    Then the city shown should be Gent