*** Settings ***
Resource    ../Resources/PO/SigninPage.robot
Resource    ../Resources/PO/PostMessagePage.robot
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/DeleteMessagePage.robot


#date 031320  Marcos

*** Keywords ***
Launch Web site
   LandingPage.Load
   LandingPage.Verify Page Loaded
Signin
   SigninPage.SignIn
PostMessage
   PostMessagePage.PostMessage
Post and delete Message
   DeleteMessagePage.Post_then_delete_Message










