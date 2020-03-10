*** Settings ***
Library  SeleniumLibrary

#date 031020  Marcos

*** Keywords ***

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


