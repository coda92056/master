*** Settings ***
Library  RequestsLibrary
Library  Collections


*** Variables ***
${url}  https://enigmatic-inlet-91460.herokuapp.com
${user}     code92056@gmail.com
${password}   password
${name}    Koda Bare
${linkimage}  https://secure.gravatar.com/avatar/dd5781cd5667ced48002d05e2da85628?s=80

*** Test Cases ***
Get_HomePage
    [Tags]  Smoke
    create session  mysession  ${url}
    ${response}=  get request   mysession    login
    #log to console   data:${response}
    #log to console  status code:${response.status_code}
    #log to console  content:${response.content}
    #log to console  header:${response.headers}

    #${value}=  convert to string  ${response}
    ${codevalue}=  convert to string  ${response.status_code}
    ${Title}=    convert to string  ${response.content}
    #log to console   Response Returned:${value}
    #log to console   Response code returned: ${codevalue}
    should contain   ${codevalue}    200
    should contain   ${Title}    Log in | Ruby on Rails Tutorial Sample App


SignIn As Existing User
    [Tags]  Smoke
    create session  mysession  ${url}
    ${body}=  create dictionary  session_email=coda92056@gmail.com  session_password=password
    ${header}=  create dictionary   Content-Type=application/json
    ${response}=  post request  mysession  /login  data=${body}  headers=${header}
    #log to console  status code:${response.status_code}
    #log to console  body:${response.content}
    #get user home page
    ${response}=  get request  mysession  /users/101
    #log to console  ${response.content}
    ${User}=    convert to string  ${response.content}
    ${codevalue}=  convert to string  ${response.status_code}
    #validate user
    should contain   ${codevalue}    200
    should contain   ${User}    Koda Bare

View Users home page Microfeeds
    [Tags]  Full
    create session  mysession  ${url}
    ${body}=  create dictionary  session_email=coda92056@gmail.com  session_password=password
    ${header}=  create dictionary   Content-Type=application/json
    ${response}=  post request  mysession  /login  data=${body}  headers=${header}
    #log to console  status code:${response.status_code}
    #log to console  body:${response.content}
    ${response}=  get request  mysession  /users/101
    #log to console  ${response.content}
    ${codevalue}=  convert to string  ${response.status_code}
    should contain   ${codevalue}    200
    #validate user
    should contain   ${name}    Koda Bare
    should contain   ${linkimage}   https://secure.gravatar.com/avatar/dd5781cd5667ced48002d05e2da85628?s=80




View another user's Microfeeds
    [Tags]  Integration
    create session  mysession  ${url}
    ${body}=  create dictionary  session_email=coda92056@gmail.com  session_password=password
    ${header}=  create dictionary   Content-Type=application/json
    ${response}=  post request  mysession  /login  data=${body}  headers=${header}
    #log to console  status code:${response.status_code}
    #log to console  body:${response.content}

    #get user home page
    ${response}=  get request  mysession  /users/2
    #log to console  ${response.content}
    ${User}=    convert to string  ${response.content}
    ${codevalue}=  convert to string  ${response.status_code}
    #validate user
    should contain   ${codevalue}    200
    should contain   ${User}    Dr. Iliana Schamberger

SignIn As Non-Existing User
    [Tags]  Sanity
    create session  mysession  ${url}
    ${body}=  create dictionary  session_email=zoda92056@gmail.com  session_password=password
    ${header}=  create dictionary   Content-Type=application/json
    ${response}=  post request  mysession  /login  data=   headers=
    #log to console  status code:${response.status_code}
    #log to console  body:${response.content}
    #log to console  body:${response.content}
    ${codevalue}=  convert to string  ${response.status_code}
    should contain   ${codevalue}    422

SignIn with Username and Password
    [Tags]  Sanity
    create session  mysession  ${url}
    ${body}=  create dictionary  session_email="" session_password=""
    ${header}=  create dictionary   Content-Type=application/json
    ${response}=  post request  mysession  /login  data=   headers=
    #log to console  status code:${response.status_code}
    #log to console  body:${response.content}
    #log to console  body:${response.content}
    ${codevalue}=  convert to string  ${response.status_code}
    should contain   ${codevalue}    422
