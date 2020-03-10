*** Settings ***
Library  SeleniumLibrary

#date 031020  Marcos

*** Keywords ***
Begin Web Test
    OPEN BROWSER  about:blank   chrome


Quit Browser
    close browser
