*** Settings ***
Resource    ../Resources/App.robot
Resource    ../Resources/Common.robot
Test Setup     Common.Begin Web Test
Test Teardown  Common.Quit Browser

#robot -d results Tests/Sampleapp.robot    returns a warning and unstable.. use the command line with python
#python -m robot -d results -i smoke  -v BROWSER:Firefox  Tests/Sampleapp.robot

*** Variables ***
#GLOBAL VARIABLES
${BROWSER}       Chrome
${LOG_MESSAGE}   Ok
${START_URL}     https://enigmatic-inlet-91460.herokuapp.com
${GLOBAL_MESSAGE}  Script is running


*** Test Cases ***
User can Launch Website
    [Tags]  Smoke
    [Documentation]     If successful user can launch/view website
    App.Launch Web site

User can Sign in
    [Tags]  Smoke
    [Documentation]     If successful can sign in
    App.Launch Web site
    App.Signin

User can post a message
    [Documentation]   If successful can post a message
    [Tags]  Full
    App.Launch Web site
    App.Signin
    App.PostMessage

User can post and delete message
    [Tags]  Full
    [Documentation]  If successful can create and delete posts
    App.Launch Web site
    App.Signin
    App.Post and delete Message

User can view another users Posts
    [Tags]  Full
    [Documentation]  If successful can view another users posts
    App.Launch Web site
    App.Signin
    App.View Another Users Posts

User can log out
   [Tags]  Full
   [Documentation]  If successful it should sign out user
    App.Launch Web site
    App.Signin
    App.Signout

InvalidUser
   [Tags]  Full
   [Documentation]  If not successful it should return a error message
    App.Launch Web site
    App.SigninInvalid







