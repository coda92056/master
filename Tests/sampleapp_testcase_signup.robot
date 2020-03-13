*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Sampleapp.robot

Test Setup  Begin Web Test
Test Teardown  Quit Browser

*** Variables ***

*** Test Cases ***
Existing user
    [Documentation]  Should return a error
    Sampleapp.Launch Web site
    Sampleapp.Signup Page
    Sampleapp.Existing


NonExisting user
    [Documentation]  Should signup user
    Sampleapp.Launch Web site
    Sampleapp.Signup Page
    Sampleapp.Noneexisting




