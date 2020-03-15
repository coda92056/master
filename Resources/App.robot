*** Settings ***
Resource    ../Resources/PO/SigninPage.robot
Resource    ../Resources/PO/PostMessagePage.robot
Resource    ../Resources/PO/LandingPage.robot



#date 031320  Marcos

*** Keywords ***
Launch Web site
   LandingPage.Load
   LandingPage.Verify Page Loaded
Sign
   SigninPage.SignIn
Post
   PostMessagePage.PostMessage
   PostMessagePage.VerifyPost








