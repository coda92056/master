*** Settings ***
Library  SeleniumLibrary

#date 031020  Marcos

*** Keywords ***
Begin Web Test
    OPEN BROWSER  about:blank   ${BROWSER}
    maximize browser window


Quit Browser
    close browser
