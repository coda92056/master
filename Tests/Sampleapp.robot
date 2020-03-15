*** Settings ***
Resource    ../Resources/App.robot
Resource    ../Resources/Common.robot
Test Setup     Common.Begin Web Test
Test Teardown  Common.Quit Browser


*** Variables ***

*** Test Cases ***

User can Log into Website and post a message
    [Documentation]
    App.Launch Web site
    App.Sign
    App.Post





