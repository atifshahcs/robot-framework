*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}     https://practicetestautomation.com/practice-test-login/

*** Test Cases ***
LoginTest 
    Open Browser    ${url}    ${browser}
    loginToApplication
    Sleep    3s
    Close Browser

*** Keywords ***
loginToApplication
    Input Text    id:username    student
    Input Text    id:password    Password123

    Click Button    id:submit