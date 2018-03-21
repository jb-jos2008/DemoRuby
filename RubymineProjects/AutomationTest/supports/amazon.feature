@regression
  Feature: Amazon search functionality
    @regression
    Scenario: User can serch for specific items
      Given User goes to amazon
      When User serch for "pen"
      Then Amazon should return search result for "pen"
