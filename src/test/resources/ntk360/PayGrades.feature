Feature: Login functionality

  @scruml
  Scenario: Verify Pay Grades header title
    Given User is logged into NTK application "scrum"
    When User navigates to Pay Grades Page | click "menu.payGrades"
    Then System displays page header | verify "payGrades.header"

  @us123
  Scenario Outline: Verify User able to add new Pay grades
    Given User is logged into NTK application <region>
    When User navigates to Pay Grades Page | click "menu.payGrades"
    And User clicks Add icon | click "common.addIcon"
    And User enters name | enterValue "payGrades.name" <gradeName>
    And User clicks save button | click "common.saveButton"
    Then System displays message "Successfully Saved"

    @scrum
    Examples: 
      | region  | gradeName      |
      | "scrum" | "Senior SDET2" |

    @sit
    Examples: 
      | region | gradeName      |
      | "sit"  | "BA senior..." |

    @stage
    Examples: 
      | region  | gradeName     |
      | "stage" | "Senior SDET" |

  Scenario Outline: Verify User able to edit existing Pay grades
    Given User is logged into NTK application <region>
    When User navigates to Pay Grades Page | click "menu.payGrades"
    And User clicks edit icon | click "common.editIcon"
    And User enters name | enterValue "payGrades.name" <gradeName>
    And User clicks save button | click "common.saveButton"
    Then System displays message "Successfully Updated"

    @scrum
    Examples: 
      | region  | gradeName     |
      | "scrum" | "Junior SDET" |

    @sit
    Examples: 
      | region  | gradeName     |
      | "scrum" | "Senior SDET" |

    @stage
    Examples: 
      | region  | gradeName     |
      | "scrum" | "Senior SDET" |
