@davidtest
Feature: Shopping Cart Management

  As a logged-in customer
  I want to manage items in my shopping cart
  So that I can keep track of what I intend to purchase

  Scenario: Add a single item to the cart
    Given I am a logged-in customer
    And I have an empty shopping cart
    When I add a "book" to the cart
    Then the cart should contain 1 item
    And the cart should display "book"

  Scenario: Add multiple items to the cart
    Given I am a logged-in customer
    And I have an empty shopping cart
    When I add a "book" and a "pen" to the cart
    Then the cart should contain 2 items
    And the cart should display "book" and "pen"

  Scenario: Remove an item from the cart
    Given I am a logged-in customer
    And I have a "book" in my shopping cart
    When I remove the "book" from the cart
    Then the cart should be empty

  Scenario: Add and remove items
    Given I am a logged-in customer
    And I have an empty shopping cart
    When I add a "notebook" to the cart
    And I add a "pencil" to the cart
    And I remove the "notebook" from the cart
    Then the cart should contain 1 item
    And the cart should display "pencil"
