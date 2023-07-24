*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}    https://practicetestautomation.com/practice-test-login/
${browser}    chrome

*** Test Cases ***
TestCasePositive
    ${app_title}=    LaunchBrowser    ${url}    ${browser}
    Log To Console    ${app_title}
    Log    ${app_title} 

    Input Text    xpath: //input[@id='username']    student
    Sleep    1

    Input Text    xpath: //input[@id='password']    Password123
    Sleep    1

    Click Button    xpath://button[@id='submit']
    Sleep    1

