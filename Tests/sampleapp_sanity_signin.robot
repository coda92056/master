*** Settings ***
Library  SeleniumLibrary
#date 020520

*** Variables ***

*** Test Cases ***
User launches browser
    [Documentation]  To sanity check Sample App website
    OPEN BROWSER  https://enigmatic-inlet-91460.herokuapp.com/login chrome
    sleep  5s
    WAIT UNTIL PAGE CONTAINS  Log in
    #input text  id=twotabsearchtextbox  Ferrari 408
    sleep  2s
    #WAIT UNTIL PAGE CONTAINS  results for "Ferrari 408"
    #go to home page
    #click element  xpath=//*[@id="nav-logo"]/a[1]
    close browser