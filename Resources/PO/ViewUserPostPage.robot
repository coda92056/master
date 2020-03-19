*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#Local Variable
${User}   Dr. Iliana Schamberger

*** Keywords ***


View User Micropost Feed
     Log  ${GLOBAL_MESSAGE}
     Sleep  2s
     Click link  Users
     WAIT UNTIL PAGE CONTAINS  All users
     click image  ${User}
    #this works too  click link  ${User}
     WAIT UNTIL PAGE CONTAINS   Microposts
     Sleep  5s

