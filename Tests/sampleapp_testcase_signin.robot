*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Sampleapp.robot

Test Setup  Begin Web Test
Test Teardown  Quit Browser

*** Variables ***

*** Test Cases ***
Existing user
    [Documentation]  Should allow user to login and logout
    Sampleapp.Launch Web site
    Sampleapp.Login Page
    Sampleapp.ExistingUser


NonExistingUser
    [Documentation]  Should not allow user to login with error message
    Sampleapp.Launch Web site
    Sampleapp.Login Page
    Sampleapp.NoneexistingUser
