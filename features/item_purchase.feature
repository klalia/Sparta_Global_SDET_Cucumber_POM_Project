Feature: Item Purchase

  Scenario: Succesfully purchasing a product through the ecommerce product
    Given I have succesfully logged into the website
    And I have gone to the t-shirts page
    And I have clicked on the faded short sleeved t-shirt
    And I have added to cart
    And I have proceeded to checkout
    And I have confirmed the cart
    And I have confirmed the address details
    And I have clicked the terms and conditions
    And I have confirmed the shipping details
    And I have chosen the payment option
    When I have confirmed the order
    Then I get confirmation of the order
