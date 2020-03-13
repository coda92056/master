*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Sampleapp.robot

Test Setup  Begin Web Test
Test Teardown  Quit Browser

*** Variables ***

*** Test Cases ***
Existing user
    [Documentation]  Should allow user to post message
    Sampleapp.Launch Web site
    Sampleapp.Login Page
    Sampleapp.ValidUser
    Sampleapp.PostMessage



