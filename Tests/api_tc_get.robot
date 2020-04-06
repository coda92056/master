*** Settings ***
Library  RequestsLibrary
Library  Collections


*** Variables ***
${url}  https://restapi.demoqa.com/utilities/weather/city/
${city}     Los Angeles

*** Test Cases ***
Get_Weather_Info
    create session  mysession  ${url}
    ${response}=  get request   mysession  utilities/weather/city/${city}
    log to console  ${response}
    #log to console  ${response.status_code}
    #log to console  ${response.content}
    #log to console  ${response.headers}

Get_Weather_Code
    create session  mysession  ${url}
    ${response}=  get request   mysession  utilities/weather/city/${city}
    #validations
    ${status_code}=  convert to string  ${response.status_code}
    should be equal  ${status_code}     200

Get_Weather_Location
    create session  mysession  ${url}
    ${response}=  get request   mysession  utilities/weather/city/${city}
    ${body}=   convert to string  ${response.content}
    should contain  ${body}  Los Angeles

Get_Weather_Content_Type
    create session  mysession  ${url}
    ${response}=  get request   mysession  utilities/weather/city/${city}
    ${content_type_value}=  get from dictionary  ${response.headers}  Content-Type
    should be equal  ${content_type_value}  application/json


