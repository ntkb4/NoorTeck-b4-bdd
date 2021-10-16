Feature: Job Titles Page functionality

  @us916
  Scenario Outline: Verify User able to add new Job Title
    Given User is logged into NTK application <region>
    When User navigates to Job Title Page | click "menu.jobTitles"
    And User clicks Add icon | click "common.addIcon"
    And User enters name | enterValue "jobTitle.name" <jobTitleName>
    And User enters description | enterValue "jobTitle.description" <jobDesciption>
    And User clicks save button | click "common.saveButton"
    Then System displays message "Successfully Saved"

    Examples: 
      | region  | Job Title Name     | Job Description         |
      | "scrum" | "Product Owner PO" | "Owner of product"      |
      | "sit"   | "Developer D"      | "Develops applications" |
      | "stage" | "QA Tester SDET"   | "Test Applications"     |
