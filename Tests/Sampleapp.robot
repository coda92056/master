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

User can Log into Website and post a message
    [Documentation]
    ${time}=   get time
    Log  ${TIME}
    App.Launch Web site
    App.Sign
    App.Post
    Log     ${TIME}





