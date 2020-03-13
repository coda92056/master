*** Settings ***
Library  SeleniumLibrary

#date 031020  Marcos

*** Keywords ***

Launch Web site
    Go To  https://enigmatic-inlet-91460.herokuapp.com
    sleep  5s
    WAIT UNTIL PAGE CONTAINS  Welcome to the Sample App

Signup Page
    click link  Sign up now!
    sleep  5s
    WAIT UNTIL PAGE CONTAINS  Sign up

Return Home
    click link  Home
    sleep  2s

Login Page
    click link  Log in
    WAIT UNTIL PAGE CONTAINS  Log in
    sleep  2s

Help Page
    click link  Help
    WAIT UNTIL PAGE CONTAINS  Always ask Koda for Help
    sleep  2s

Existing
    input text  id=user_name  Koda Bear
    input text  id=user_email  koda2@bear.com
    input text  id=user_password  foobar
    input text  id=user_password_confirmation   foobar
    click button    xpath=//input[@name='commit']
    WAIT UNTIL PAGE CONTAINS   Email has already been taken

Noneexisting
    input text  id=user_name  Koda Bear
    input text  id=user_email  koda3@bear.com
    input text  id=user_password  foobar
    input text  id=user_password_confirmation   foobar
    click button    xpath=//input[@name='commit']
    WAIT UNTIL PAGE CONTAINS   Please check your email to activate your account
    sleep  2s

ExistingUser

    input text  id=session_email  example@railstutorial.org
    input text  id=session_password  foobar
    click button    xpath=//input[@name='commit']
    WAIT UNTIL PAGE CONTAINS   Example User
    click element    xpath=//a[@class='dropdown-toggle']
    #click link       xpath=//a[contains(text(),'Log out')]
    click link   Log out


NoneexistingUser
    input text  id=session_email  badexample@railstutorial.org
    input text  id=session_password  foobar
    click button    xpath=//input[@name='commit']
    WAIT UNTIL PAGE CONTAINS   Invalid email/password combination

ValidUser
    input text  id=session_email  coda92056@gmail.com
    input text  id=session_password  password
    click button    xpath=//input[@name='commit']
    click link  Home

PostMessage
    WAIT UNTIL PAGE CONTAINS  Micropost Feed
    input text   id=micropost_content  Koda was here 0810
    click button    xpath=//input[@name='commit']
    WAIT UNTIL PAGE CONTAINS  Koda was here 0810


