*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
User launches browser
    [Documentation]  To sanity check Sample App website
    OPEN BROWSER  https://enigmatic-inlet-91460.herokuapp.com/  chrome
    sleep  5s
    WAIT UNTIL PAGE CONTAINS  Welcome to the Sample App
    #input text  id=twotabsearchtextbox  Ferrari 408
    sleep  2s
    #click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    #sleep  2s
    #WAIT UNTIL PAGE CONTAINS  results for "Ferrari 408"
    #go to home page
    #click element  xpath=//*[@id="nav-logo"]/a[1]
    close browser

*** Keywords ***