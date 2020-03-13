*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Sampleapp.robot

Test Setup  Begin Web Test
Test Teardown  Quit Browser

*** Variables ***

*** Test Cases ***
User Launches website
    [Documentation]  To sanity check Sample App website
    Sampleapp.Launch Web site
    Sampleapp.Signup Page
    Sampleapp.Return Home
User redirects to Login Page
    Sampleapp.Launch Web site
    Sampleapp.Login Page
    Sampleapp.Return Home
User redirects to Help Page
    Sampleapp.Launch Web site
    Sampleapp.Help Page
    Sampleapp.Return Home



