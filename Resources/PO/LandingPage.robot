*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Load
    Go To  https://enigmatic-inlet-91460.herokuapp.com

Verify Page Loaded
    sleep  5s
    WAIT UNTIL PAGE CONTAINS  Welcome to the Sample App


