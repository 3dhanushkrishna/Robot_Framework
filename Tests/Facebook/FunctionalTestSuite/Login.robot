*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  https://www.google.co.in/
${search_p}  Amazon.in

*** Test Cases ***
Log Screen Test
    [Documentation]  this is a log sceen for user
    [Tags]  user
    log  hello
Registration Screen Test
    [Documentation]  this is a registration for user
    [Tags]  user
    log  success
Admin Login Test
    [Documentation]  this is for users
    [Tags]  admin
    log  admin
Goggle Test
    [Documentation]  this is for goggle test
    [Tags]  internet
    open Browser  ${web_url}     chrome
    Maximize Browser Window

    Enter Search Date
    Submit Form
    sleep  5s
    close Browser


*** Keywords ***
Enter Search Date
    Input Text  name:q  ${search_p}