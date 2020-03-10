*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Sampleapp.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/Sampleapp.robot


*** Variables ***

*** Test Cases ***
User Sanity checks website
    [Documentation]  To sanity check Sample App website
    Common.Begin Web Test
    Sampleapp.Launch Web site
    Sampleapp.Signup Page
    Sampleapp.Return Home
    Sampleapp.Login Page
    Sampleapp.Return Home
    Sampleapp.Help Page
    Sampleapp.Return Home
    Common.Quit Browser



