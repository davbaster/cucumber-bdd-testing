@davidtest
Feature: Offline Shopping Cart

  As a customer
  I want to add items to my shopping cart
  So that I can manage my purchases before checkout

  Scenario: Adding a single item to the shopping cart
    Given I am a logged-in customer
    And I have an empty shopping cart
    When I add a "red T-shirt" to the cart
    Then the cart should contain 1 item
    And the cart should display "no item"
