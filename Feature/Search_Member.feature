@SearchMemberFunctionality  @ZinreloQaTest
Feature: To Verify the Search Member Functionality of Zinrelo.com

  Background: 
    Given I am on the login Page of "Zinrelo.com"
    And I Verify the Title of "Login_Page_Title"
    And I Enter the text as "Email" in text box of Email Id on LoginPage
    And I Enter the text as "Password" in text box of Password on LoginPage
    And I Click on the Login Button on LoginPage
    And I Verify the Title of "Home_Page_Title"

  @SearchNewlyAddedMember
  Scenario Outline: To Verify that User should be able to Search Member Using Email,First name, Last name, Member id
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "<Email>" on Add Member POP-UP
    And I Enter First Name as "<First>" on Add Member POP-UP
    And I Enter Last Name as "<Last>" on Add Member POP-UP
    And I Enter Member ID as "<MemID>" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    And I verify that the Member has been enrolled successfully on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Enter the "<SearchBy>" in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Check the the CheckBox Against the Newly Created Memeber on Member Tab
    And I Select the "Delete" option fromt the Action Dropdown on Member Tab
    And I Click on the Confirm Button to delete the User on Delete POP-UP
    And I Click on element Logout Button on HomePage

    Examples: 
      | Email        | First      | Last      | MemID   | SearchBy     |
      | A1@gmail.com | FirstName1 | lastname1 | MemID01 | A1@gmail.com |
      | A2@gmail.com | FirstName2 | lastname2 | MemID02 | FirstName2   |
      | A3@gmail.com | FirstName3 | lastname3 | MemID03 | lastname3    |
      | A4@gmail.com | FirstName4 | lastname4 | MemID04 | MemID04      |

  @SearchDeletedMember
  Scenario Outline: To Verify that User should not be able to view Deleted Member when user search Using Email,First name, Last name, Member id
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "<Email>" on Add Member POP-UP
    And I Enter First Name as "<First>" on Add Member POP-UP
    And I Enter Last Name as "<Last>" on Add Member POP-UP
    And I Enter Member ID as "<MemID>" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    And I verify that the Member has been enrolled successfully on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Enter the "<SearchBy>" in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Check the the CheckBox Against the Newly Created Memeber on Member Tab
    And I Select the "Delete" option fromt the Action Dropdown on Member Tab
    And I Click on the Confirm Button to delete the User on Delete POP-UP
    And I Enter the "<SearchBy>" in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Verify that User is "Not visible"
    And I Click on element Logout Button on HomePage

    Examples: 
      | Email        | First       | Last       | MemID    | SearchBy     |
      | B1@gmail.com | FirstName11 | lastname11 | MemID011 | B1@gmail.com |
      | B2@gmail.com | FirstName22 | lastname22 | MemID022 | FirstName22  |
      | B3@gmail.com | FirstName33 | lastname33 | MemID033 | lastname33   |
      | B4@gmail.com | FirstName44 | lastname44 | MemID044 | MemID044     |

  @SearchBlockedMember
  Scenario Outline: Verify that User should be able to view Blocked Member when user search Using Email,First name, Last name, Member id
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "<Email>" on Add Member POP-UP
    And I Enter First Name as "<First>" on Add Member POP-UP
    And I Enter Last Name as "<Last>" on Add Member POP-UP
    And I Enter Member ID as "<MemID>" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    And I verify that the Member has been enrolled successfully on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Enter the "<SearchBy>" in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Check the the CheckBox Against the Newly Created Memeber on Member Tab
    And I Select the "Block" option fromt the Action Dropdown on Member Tab
    And I Click on the Confirm Button to delete the User on Delete POP-UP
    And I Enter the "<SearchBy>" in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Verify that User is "visible"
    And I Click on Profile Link
    And I Select the "Unblock" option fromt the Action Dropdown on Profile Page
    And I Click on the Confirm Button to Unblock the User on Profile page
    When I Click on Members Tab of Home Page
    And I Enter the "<SearchBy>" in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Check the the CheckBox Against the Newly Created Memeber on Member Tab
    And I Select the "Delete" option fromt the Action Dropdown on Member Tab
    And I Click on the Confirm Button to delete the User on Delete POP-UP
    And I Click on element Logout Button on HomePage

    Examples: 
      | Email        | First       | Last       | MemID    | SearchBy     |
      | C1@gmail.com | FirstName11 | lastname11 | MemID011 | C1@gmail.com |
      | C2@gmail.com | FirstName22 | lastname22 | MemID022 | FirstName22  |
      | C3@gmail.com | FirstName33 | lastname33 | MemID033 | lastname33   |
      | C4@gmail.com | FirstName44 | lastname44 | MemID044 | MemID044     |

  @SearchBY
  Scenario: Verify that User should not  able to view  Member when user searches Using diffrent wording provided in the member details
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "Email76@gmail.com" on Add Member POP-UP
    And I Enter First Name as "First Name" on Add Member POP-UP
    And I Enter Last Name as "Last Name" on Add Member POP-UP
    And I Enter Member ID as "MemID01" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    And I verify that the Member has been enrolled successfully on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Enter the SearchBy in the search Box to Search the user on Member Tab
      | Email76@gmail.com |
      | First Name        |
      | MemID01           |
      | Last              |
      | First             |
      | Last              |
      | Name              |
    #| Mem               |
    #| ID01              |
    And I Check the the CheckBox Against the Newly Created Memeber on Member Tab
    And I Select the "Delete" option fromt the Action Dropdown on Member Tab
    And I Click on the Confirm Button to delete the User on Delete POP-UP
    And I Click on element Logout Button on HomePage
