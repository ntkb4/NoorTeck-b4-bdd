Feature: Login functionality

  @us123
  Scenario Outline: Verify User able to add new Pay grades
    Given User is logged into NTK application <region>
    When User navigates to Pay Grades Page | click "menu.payGrades"
    And User clicks Add icon | click "common.addIcon"
    And User enters name | enterValue "payGrades.name" <gradeName>
    And User clicks save button | click "common.saveButton"
    Then System displays message "Successfully Saved"

    Examples: 
      | region  | gradeName   		 |
      | "scrum" | "Senior lv2 abc" |
      | "sit"   | "Senior lv3 abc" |
      | "stage" | "Senior lv4 abc" |
      
      
      Feature: Login functionality

  @us456
  Scenario Outline: Verify User able  to enter a new login page
    Given User is loging into bank application.
    When User navigates to capitalOne.com | click "login.page"
    And User enter username | click enter "username"<username>
    And User enters password| click enter "password"<password>
    And User clicks save button | click "login.saveButton"
    Then User click log in| click "loging button.enter page"

    Examples: 
      | region  | username | pasword |
      | "scrum" | "Asmin"  | 1234k   |
      | "sit"   | "Jhoan"  | 5432d   |
      | "stage" | "json"   | 7658z   |
      
      