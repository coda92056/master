*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#Local Variable



*** Keywords ***

Post_then_delete_Message
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
     Click link  xpath=/html/body/div/div/div/ol/li[1]/span[3]/a
     Sleep  5s
     alert should be present
     Sleep  2s
     wait until page does not contain  ${time}
     Sleep  2s
     #WAIT UNTIL PAGE CONTAINS   ${time}