*** Settings ***
Resource    ../Resources/App.robot
Resource    ../Resources/Common.robot
Test Setup     Common.Begin Web Test
Test Teardown  Common.Quit Browser


*** Variables ***
${Browser}        Firefox
${Log_Message}    ok
${Post_Message}   koda was here again
${Start_Url}      https://enigmatic-inlet-91460.herokuapp.com



*** Test Cases ***

User can Log into Website and post a message
    [Documentation]
    App.Launch Web site
    App.Sign
    App.Post
    Log     ${Log_Message}





