*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${browser}    Chrome
${url}     https://practicetestautomation.com/practice-test-login/

*** Test Cases ***
LoginTest 
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    Test Login | Practice Test Automation
    ${"email_txt"}    Set Variable    id:username
    Element Should Be Visible    ${"email_txt"}
    Element Should Be Enabled    ${"email_txt"}
    Input Text     ${"email_txt"}    student
    Sleep    3s
    Clear Element Text    ${"email_txt"}
    Sleep    3s


    Close Browser

*** Keywords ***
loginToApplication
    Input Text    id:username    student
    Input Text    id:password    Password123

    Click Button    id:submit