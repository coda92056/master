*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Sign In
    click link  Log in
    WAIT UNTIL PAGE CONTAINS  Log in
    sleep  2s
    input text  id=session_email  coda92056@gmail.com
    input text  id=session_password  password
    click button  xpath=//input[@name='commit']
    WAIT UNTIL PAGE CONTAINS  Koda Bare
    Log     ${Log_Message}

