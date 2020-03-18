*** Settings ***
Resource    ../Resources/App.robot
Resource    ../Resources/Common.robot
Test Setup     Common.Begin Web Test
Test Teardown  Common.Quit Browser


*** Variables ***
#GLOBAL VARIABLES
${BROWSER}       Chrome
${LOG_MESSAGE}   Ok
${START_URL}     https://enigmatic-inlet-91460.herokuapp.com


*** Test Cases ***
User can Log into Website
    [Tags]  Smoke
    App.Launch Web site

User can Sign in
    [Tags]  Smoke
    [Documentation]
    App.Launch Web site
    App.Signin

User can post a message
    [Documentation]
    [Tags]  Full
    App.Launch Web site
    App.Signin
    App.PostMessage

User can post and delete message
    [Tags]  working
    [Documentation]
    App.Launch Web site
    App.Signin
    App.Post and delete Message





