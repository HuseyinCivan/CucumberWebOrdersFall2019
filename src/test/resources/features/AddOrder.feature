Feature: Add order
  As user, I want to be able to create new orders

  Scenario: 1. Create order
    Given user is on the login page
    And user log in
    And user navigates to "Order" page
    When user enters product information:
      | Product     | Quantity | Priceper unit | Discount |
      | ScreenSaver | 12       | 20            | 10%      |
    And user clicks on calculate button
    Then user should verify that total 216 is displayed
    When user enters address information:
      | Customer name | Stree   | City     | State    | Zip   |
      | Test User     | 5th Ave | New York | New York | 10011 |
    And user enters paymentinformation:
      | Card | Card Nr   | Expire Date (mm/yy) |
      | Visa | 123456789 | 04/25               |
    And user clicks on process button
    And user navigates to "View all orders" page
    Then user verifies that order i displayed
      | Name      | Product     |
      | Test User | ScreenSaver |