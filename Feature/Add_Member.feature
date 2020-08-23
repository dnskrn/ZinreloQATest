@AddMemberFunctionality @ZinreloQaTest
Feature: To Verify the Search Member Functionality of Zinrelo.com

  Background: 
    Given I am on the login Page of "Zinrelo.com"
    And I Verify the Title of "Login_Page_Title"
    And I Enter the text as "Email" in text box of Email Id on LoginPage
    And I Enter the text as "Password" in text box of Password on LoginPage
    And I Click on the Login Button on LoginPage
    And I Verify the Title of "Home_Page_Title"

  @AllFieldBlank
  Scenario: To Verify that User should not be able to Add Member if provided all the field as Blank
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "" on Add Member POP-UP
    And I Enter First Name as "" on Add Member POP-UP
    And I Enter Last Name as "" on Add Member POP-UP
    And I Enter Member ID as "" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    Then I Verify the The Error Message as "Blank_Email1" on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Click on element Logout Button on HomePage

  @BlankEmail
  Scenario: To Verify that User should not be able to Add Member if provided the Email Address as Blank
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "" on Add Member POP-UP
    And I Enter First Name as "First" on Add Member POP-UP
    And I Enter Last Name as "Last" on Add Member POP-UP
    And I Enter Member ID as "Member" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    Then I Verify the The Error Message as "Blank_Email" on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Click on element Logout Button on HomePage

  @BlankFirstName
  Scenario: To Verify that User should not be able to Add Member if user has provided First Name as Blank
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "Abcdef1@gmail.com" on Add Member POP-UP
    And I Enter First Name as "" on Add Member POP-UP
    And I Enter Last Name as "Last" on Add Member POP-UP
    And I Enter Member ID as "Member" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    Then I Verify the The Error Message as "Blank_FirstName" on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Click on element Logout Button on HomePage

  @BlankLasttName
  Scenario: To Verify that User should be able to Add Member if user has provided Last Name as Blank
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "Abcdef2@gmail.com" on Add Member POP-UP
    And I Enter First Name as "FirstName" on Add Member POP-UP
    And I Enter Last Name as "" on Add Member POP-UP
    And I Enter Member ID as "Member" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    And I verify that the Member has been enrolled successfully on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Enter the Email ID in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Check the the CheckBox Against the Newly Created Memeber on Member Tab
    And I Select the "Delete" option fromt the Action Dropdown on Member Tab
    And I Click on the Confirm Button to delete the User on Delete POP-UP
    And I Click on element Logout Button on HomePage

  @BlankMemberID
  Scenario: To Verify that User should be able to Add Member if user has provided Last Name as Blank
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "Abcdef3@gmail.com" on Add Member POP-UP
    And I Enter First Name as "First" on Add Member POP-UP
    And I Enter Last Name as "Last" on Add Member POP-UP
    And I Enter Member ID as "" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    And I verify that the Member has been enrolled successfully on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Enter the Email ID in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Check the the CheckBox Against the Newly Created Memeber on Member Tab
    And I Select the "Delete" option fromt the Action Dropdown on Member Tab
    And I Click on the Confirm Button to delete the User on Delete POP-UP
    And I Click on element Logout Button on HomePage

  @CheckoutAddMemberOK
  Scenario: To Verify that User should be able to Add Member if user has provided all the field and and clicks on OK Button of the POP-UP
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "Abcdef4@gmail.com" on Add Member POP-UP
    And I Enter First Name as "FirstName" on Add Member POP-UP
    And I Enter Last Name as "LastName" on Add Member POP-UP
    And I Enter Member ID as "MemID01" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    And I verify that the Member has been enrolled successfully on Add Member POP-UP
    And I Click on OK Button to close the POP-UP
    And I Enter the Email ID in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Check the the CheckBox Against the Newly Created Memeber on Member Tab
    And I Select the "Delete" option fromt the Action Dropdown on Member Tab
    And I Click on the Confirm Button to delete the User on Delete POP-UP
    And I Click on element Logout Button on HomePage

  @CheckoutAddMemberCross
  Scenario: To Verify that User should be able to Add Member if user has provided all the field and and clicks on CROSS Button of the POP-UP
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "Abcdegf5@gmail.com" on Add Member POP-UP
    And I Enter First Name as "FirstName" on Add Member POP-UP
    And I Enter Last Name as "LastName" on Add Member POP-UP
    And I Enter Member ID as "MemID01" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    And I verify that the Member has been enrolled successfully on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Enter the Email ID in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Check the the CheckBox Against the Newly Created Memeber on Member Tab
    And I Select the "Delete" option fromt the Action Dropdown on Member Tab
    And I Click on the Confirm Button to delete the User on Delete POP-UP
    And I Click on element Logout Button on HomePage

  @CheckoutAddMemberWithMandatoryDetails
  Scenario: To Verify that User should be able to Add Member if user has provided all the field and and clicks on CROSS Button of the POP-UP
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "Abcdegf6@gmail.com" on Add Member POP-UP
    And I Enter First Name as "FirstName" on Add Member POP-UP
    And I Enter Last Name as "" on Add Member POP-UP
    And I Enter Member ID as "" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    And I verify that the Member has been enrolled successfully on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Enter the Email ID in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Check the the CheckBox Against the Newly Created Memeber on Member Tab
    And I Select the "Delete" option fromt the Action Dropdown on Member Tab
    And I Click on the Confirm Button to delete the User on Delete POP-UP
    And I Click on element Logout Button on HomePage

  @CheckoutAddMemberWithAllDetails
  Scenario: To Verify that User should be able to Add Member if user has provided all the field and and clicks on CROSS Button of the POP-UP
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "Abcdegf7@gmail.com" on Add Member POP-UP
    And I Enter First Name as "FirstName" on Add Member POP-UP
    And I Enter Last Name as "Lastname" on Add Member POP-UP
    And I Enter Member ID as "MemID01" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    And I verify that the Member has been enrolled successfully on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Enter the Email ID in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Check the the CheckBox Against the Newly Created Memeber on Member Tab
    And I Select the "Delete" option fromt the Action Dropdown on Member Tab
    And I Click on the Confirm Button to delete the User on Delete POP-UP
    And I Click on element Logout Button on HomePage

  @InvalidEmailID
  Scenario: To Verify that User should not be able to Add Member if user has provided invalid Email ID
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter First Name as "FirstName" on Add Member POP-UP
    And I Enter Last Name as "LastName" on Add Member POP-UP
    And I Enter Member ID as "MemID01" on Add Member POP-UP
    And I Enter Email Address as invalid on Add Member POP-UP
      | abcdefghijklmnopqrstuvwxyz       |
      | ABCDEFGHIJKLMNOPQRSTUVWXYZ       |
      | example.com                      |
      | a”b(c)d,e:f;gi[j\\k]l@domain.com |
      | abc”test”email@domain.com        |
      | abc is”not\\valid@domain.com     |
      | bc\\ is\\”not\\valid@domain.com  |
    #| ..test@domain.com                |
    #| test@domain..com                 |
    Then I Verify the The Error Message as "Invalid_Email_ID" on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Click on element Logout Button on HomePage

  @DuplicateMember
  Scenario: To Verify that User should not be able to Add Member if user has provided Duplicate Member Details
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "Abcdegf8@gmail.com" on Add Member POP-UP
    And I Enter First Name as "FirstName" on Add Member POP-UP
    And I Enter Last Name as "LastName" on Add Member POP-UP
    And I Enter Member ID as "MemID01" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    And I verify that the Member has been enrolled successfully on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "Abcdegf8@gmail.com" on Add Member POP-UP
    And I Enter First Name as "FirstName" on Add Member POP-UP
    And I Enter Last Name as "LastName" on Add Member POP-UP
    And I Enter Member ID as "MemID01" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    Then I Verify the The Error Message as "Duplicate_Member" on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Enter the Email ID in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Check the the CheckBox Against the Newly Created Memeber on Member Tab
    And I Select the "Delete" option fromt the Action Dropdown on Member Tab
    And I Click on the Confirm Button to delete the User on Delete POP-UP
    And I Click on element Logout Button on HomePage

  @AddCloseAddMember
  Scenario: To Verify that User should be able to Add Member if user has earlier closed the Add Member Pop-UP
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Click on Cross Button to close the POP-UP
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "Abcdef9@gmail.com" on Add Member POP-UP
    And I Enter First Name as "FirstName" on Add Member POP-UP
    And I Enter Last Name as "LastName" on Add Member POP-UP
    And I Enter Member ID as "MemID01" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    And I verify that the Member has been enrolled successfully on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Enter the Email ID in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Check the the CheckBox Against the Newly Created Memeber on Member Tab
    And I Select the "Delete" option fromt the Action Dropdown on Member Tab
    And I Click on the Confirm Button to delete the User on Delete POP-UP
    And I Click on element Logout Button on HomePage

  @AddErrorcloseAddMemberSuccess
  Scenario: To Verify that User should not be able to Add Member if user has provided Duplicate Member Details
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "Abcdegf10@gmail.com123213" on Add Member POP-UP
    And I Enter First Name as "FirstName" on Add Member POP-UP
    And I Enter Last Name as "LastName" on Add Member POP-UP
    And I Enter Member ID as "MemID01" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    Then I Verify the The Error Message as "Invalid_Email_ID" on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "Abcdegf10@gmail.com" on Add Member POP-UP
    And I Enter First Name as "FirstName" on Add Member POP-UP
    And I Enter Last Name as "LastName" on Add Member POP-UP
    And I Enter Member ID as "MemID01" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    And I verify that the Member has been enrolled successfully on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Enter the Email ID in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Check the the CheckBox Against the Newly Created Memeber on Member Tab
    And I Select the "Delete" option fromt the Action Dropdown on Member Tab
    And I Click on the Confirm Button to delete the User on Delete POP-UP
    And I Click on element Logout Button on HomePage

  @AddErrorAddMemberSuccess
  Scenario: To Verify that User should not be able to Add Member if user has provided Duplicate Member Details
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "Abcdegf@gmail.com123213" on Add Member POP-UP
    And I Enter First Name as "FirstName" on Add Member POP-UP
    And I Enter Last Name as "LastName" on Add Member POP-UP
    And I Enter Member ID as "MemID01" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    Then I Verify the The Error Message as "Invalid_Email_ID" on Add Member POP-UP
    And I Enter Email Address as "Abcdegf11@gmail.com" on Add Member POP-UP
    And I Enter First Name as "FirstName" on Add Member POP-UP
    And I Enter Last Name as "LastName" on Add Member POP-UP
    And I Enter Member ID as "MemID01" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    And I verify that the Member has been enrolled successfully on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Enter the Email ID in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Check the the CheckBox Against the Newly Created Memeber on Member Tab
    And I Select the "Delete" option fromt the Action Dropdown on Member Tab
    And I Click on the Confirm Button to delete the User on Delete POP-UP
    And I Click on element Logout Button on HomePage

  @AddMemberWithMaxCharacter
  Scenario Outline: To Verify that User should not be able to Add Member if user has provided Duplicate Member Details
    When I Click on Members Tab of Home Page
    And I Click on Add New Member Button of Home Page
    And I Enter Email Address as "<Email>" on Add Member POP-UP
    And I Enter First Name as "<First>" on Add Member POP-UP
    And I Enter Last Name as "<Last>" on Add Member POP-UP
    And I Enter Member ID as "<MemID>" on Add Member POP-UP
    And I Click on ADD Button on Add Member POP-UP
    And I verify that the Member has been enrolled successfully on Add Member POP-UP
    And I Click on Cross Button to close the POP-UP
    And I Enter the Email ID in the search Box to Search the user on Member Tab
    And I Click on Search buttom on the search box on Member Tab
    And I Check the the CheckBox Against the Newly Created Memeber on Member Tab
    And I Select the "Delete" option fromt the Action Dropdown on Member Tab
    And I Click on the Confirm Button to delete the User on Delete POP-UP
    And I Click on element Logout Button on HomePage

    Examples: 
      | Email                                                                                                                                                                                                              | First                                                                                                                                                                                                    | Last                                                                                                                                                                                                     | MemID                                                                                                                                                                                                    |
      | ABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQR@gmail.com | FirstName                                                                                                                                                                                                | lastname                                                                                                                                                                                                 | men768                                                                                                                                                                                                   |
      | abchagjhg@gmail.com                                                                                                                                                                                                | ABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQR | lastname                                                                                                                                                                                                 | men768                                                                                                                                                                                                   |
      | abchagjhgDFD@gmail.com                                                                                                                                                                                             | FirstName                                                                                                                                                                                                | ABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQR | men768                                                                                                                                                                                                   |
      | FirstName@gmail.com                                                                                                                                                                                                | FirstName                                                                                                                                                                                                | lastname                                                                                                                                                                                                 | ABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQR |
      | ABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQR@gmail.com | ABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQR | ABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQR | ABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQRSTUVWXYZABCDEFGHIjklMNOPQR |

      