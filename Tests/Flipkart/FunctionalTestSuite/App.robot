*** Settings ***
Library  SeleniumLibrary
Suite Setup  Log    Inside Test Suite Setup
Suite Teardown  Log     Inside Test Suite Teardown

Test Setup  Log     Inside Test Case Setup
Test Teardown  Log      Inside Test Case Teardown

*** Variables ***
${search}  https://www.google.co.in/
${data}  flipkart
${productsearch}  lg washing mahine

*** Test Cases ***
Goggle Test
    [Documentation]  this is google screen
    [Tags]  internet
    open Browser  ${search}     chrome
    Maximize Browser Window
    Input Data
    Submit Form
    Click Element  class:LC20lb
Flipkart Test
    [Documentation]  this is for flipkart
    [Tags]  Shopping app
    sleep  3s
    Click Button  class:_2KpZ6l
    search Flip
    sleep  3s
    Click Button  Class:L0Z3Pu
product Click Test
    [Documentation]  this is for product click test
    [Tags]  product Click
    sleep  3s
    Click Element  Xpath:/html/body/div/div/div[3]/div[1]/div[2]/div[2]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  3s
    Switch Window  title:LG 7 kg Semi Automatic Top Load Grey, White Price in India - Buy LG 7 kg Semi Automatic Top Load Grey, White online at Flipkart.com
    sleep  3s
    Click Button  class:_2KpZ6l
    sleep  3s





*** Keywords ***
Input Data
    Input Text  name:q  ${data}
search Flip
    Input Text  name:q  ${productsearch}
