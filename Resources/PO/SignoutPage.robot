*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Signout
    #log to console   ${GLOBAL_MESSAGE}
    click link  Account
    Sleep  2s
    click link  Log out

