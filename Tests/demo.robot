*** Settings ***

Library  SeleniumLibrary
#include support for rotbot framework and webdrivermanager


*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]  Test launch browser to Gofundme
    OPEN BROWSER  http://wwww.gofundme.com  ie
    sleep  3s
    close browser


*** Keywords ***
