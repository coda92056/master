*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Load
    Log  ${GLOBAL_MESSAGE}
#   Go To  https://enigmatic-inlet-91460.herokuapp.com
    Go to  ${START_URL}


Verify Page Loaded
    sleep  5s
    WAIT UNTIL PAGE CONTAINS  Welcome to the Sample App



