*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
User launches browser
    [Documentation]  Test launch browser to Amazon
    OPEN BROWSER  http://wwww.amazon.com  chrome
    sleep  3s
    close browser


*** Keywords ***