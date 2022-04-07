*** Settings ***

*** Variables ***

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


*** Keywords ***
