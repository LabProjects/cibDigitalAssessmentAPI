@regression
Feature: Petfinder API Testing collection

Scenarios Executed:
Retrieve a list of all animal types available on Petfinder
Verify that "Dog" is one of the animal types returned
Retrieve a list of all dog breeds available on Petfinder
Perform a search for dogs of the "Golden Retriever" breed and verify that at least one

Background:
  * url urlpetfinder
  * def myToken = callonce read('../Token/token.feature')
  * def authToken = myToken.accessToken

 Scenario: Retrieve a list of all animal types available on Petfinder
  Given path pathanimals
  And header Authorization = 'Bearer ' + authToken
  When method get
  Then status 200
  * print response
@smoke
Scenario: Verify that "Dog" is one of the animal types returned
    Given path pathtypes
    And header Authorization = 'Bearer ' + authToken
    When method get
    Then status 200
  * def types =  get response.types[*].name
  * print 'Available Types:', types
  * match types contains 'Dog'

  Scenario: Retrieve a list of all dog breeds available on Petfinder
    Given path pathbreeds
    And header Authorization = 'Bearer ' + authToken
    When method get
    Then status 200
    * print response

  @smoke
  Scenario: Perform a search for dogs of the "Golden Retriever" breed and verify that at least one
  result is returned.
    Given path pathbreeds
    And header Authorization = 'Bearer ' + authToken
    When method get
    Then status 200
    * match response.breeds[*].name contains 'Golden Retriever'

