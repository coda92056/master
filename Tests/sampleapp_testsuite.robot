*** Settings ***
Library  SeleniumLibrary

#date 020520  Marcos

*** Variables ***

*** Test Cases ***
User Sanity checks website
    [Documentation]  To sanity check Sample App website

    Begin Web Test
    Launch Web site
    Signup Page
    Return Home
    Login Page
    Return Home
    Help Page
    Return Home
    Quit Browser



*** Keywords ***
Begin Web Test
    OPEN BROWSER  about:blank   chrome

Launch Web site
    Go To  https://enigmatic-inlet-91460.herokuapp.com
    sleep  5s
    WAIT UNTIL PAGE CONTAINS  Welcome to the Sample App

Signup Page
    click link  Sign up now!
    sleep  5s
    WAIT UNTIL PAGE CONTAINS  Sign up

Return Home
    click link  Home
    sleep  2s

Login Page
    click link  Log in
    WAIT UNTIL PAGE CONTAINS  Log in
    sleep  2s

Help Page
    click link  Help
    WAIT UNTIL PAGE CONTAINS  Always ask Koda for Help
    sleep  2s

Quit Browser
    close browser
