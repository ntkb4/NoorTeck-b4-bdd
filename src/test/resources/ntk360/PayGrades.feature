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
      | "scrum" | "junior lv2 abc" |
      | "sit"   | "junior lv3 abc" |
      | "stage" | "junior lv4 abc" |
      