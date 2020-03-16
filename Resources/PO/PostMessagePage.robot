*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#Local Variable
${Post_Message}    Koda was Here on


*** Keywords ***

PostMessage
     Click link  Home
     Sleep  2s
     WAIT UNTIL PAGE CONTAINS  Micropost Feed
     ${time}=   get time
     #input text  id =micropost_content  ${Post_Message}
     input text  id =micropost_content  ${Post_Message}${time}
     click button  xpath=//input[@name='commit']
     Sleep  2s
     WAIT UNTIL PAGE CONTAINS  Micropost created
VerifyPost
     Click link  view my profile
     Sleep  2s
     WAIT UNTIL PAGE CONTAINS   ${Post_Message}
     Sleep  5s

