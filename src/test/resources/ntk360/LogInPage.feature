Feature: Log in Page functionality

  @us916
  Scenario Outline: Verify User able to Log In
    Given User navigates to log in page
    When User enters username | enterValue"login.username"
    And User enters password | enterValue "login.password"
    And User clicks log in | clicks "login.loginButton"
    Then User verifies dashboard title displays

    Examples: 
      | region  | username | password     |
      | "scrum" | "Admin"  | "@PkH7rC8Yd" |
      | "sit"   | "Admin"  | "GsH28Gz@kU" |
      | "stage" | "Admin"  | "Qd@o9ULc5J" |
