*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#Local Variable



*** Keywords ***

PostMessage
     Log  ${GLOBAL_MESSAGE}
     Click link  Home
     Sleep  2s
     WAIT UNTIL PAGE CONTAINS  Micropost Feed
     ${time}=   get time
     #input text  id =micropost_content  ${Post_Message}
     input text  id =micropost_content  ${time}
     click button  xpath=//input[@name='commit']
     Sleep  2s
     WAIT UNTIL PAGE CONTAINS  Micropost created
     Click link  view my profile
     Sleep  2s
     WAIT UNTIL PAGE CONTAINS   ${time}
     Sleep  5s

