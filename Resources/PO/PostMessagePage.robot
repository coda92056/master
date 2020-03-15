*** Settings ***
Library  SeleniumLibrary


*** Keywords ***

PostMessage
     Click link  Home
     Sleep  2s
     WAIT UNTIL PAGE CONTAINS  Micropost Feed
     input text  id =micropost_content  Koda was here 0810
     click button  xpath=//input[@name='commit']
     Sleep  2s
     WAIT UNTIL PAGE CONTAINS  Micropost created

VerifyPost
     Click link  view my profile
     WAIT UNTIL PAGE CONTAINS  Koda was here 0810
     Sleep  5s

