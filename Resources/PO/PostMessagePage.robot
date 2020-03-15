*** Settings ***
Library  SeleniumLibrary


*** Keywords ***

PostMessage
     Click link  Home
     Sleep  2s
     WAIT UNTIL PAGE CONTAINS  Micropost Feed
     input text  id =micropost_content  ${Post_Message}
     click button  xpath=//input[@name='commit']
     Sleep  2s
     WAIT UNTIL PAGE CONTAINS  Micropost created


VerifyPost
     Click link  view my profile
     WAIT UNTIL PAGE CONTAINS  ${Post_Message}
     Sleep  5s
     Log     ${Log_Message}

