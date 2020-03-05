*** Settings ***
Library  SeleniumLibrary
#include support for rotbot framework and webdrivermanager

*** Variables ***

*** Test Cases ***
User launches browser
    [Documentation]  To sanity check website
    OPEN BROWSER  http://wwww.amazon.com  chrome
    sleep  1s
    WAIT UNTIL PAGE CONTAINS  Hello
    input text  id=twotabsearchtextbox  Ferrari 408
    sleep  2s
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    sleep  2s
    WAIT UNTIL PAGE CONTAINS  results for "Ferrari 408"
    #go to home page
    click element  xpath=//*[@id="nav-logo"]/a[1]
    close browser

*** Keywords ***