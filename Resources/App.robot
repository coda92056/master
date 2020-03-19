*** Settings ***
Resource    ../Resources/PO/SigninPage.robot
Resource    ../Resources/PO/PostMessagePage.robot
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/DeleteMessagePage.robot
Resource    ../Resources/PO/ViewUserPostPage.robot
Resource    ../Resources/PO/SignoutPage.robot


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
View Another Users Posts
   ViewUserPostPage.View User Micropost Feed
Signout
   SignoutPage.Signout









