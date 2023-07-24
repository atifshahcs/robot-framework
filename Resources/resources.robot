*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
LaunchBrowser
    [Arguments]    ${arg_url}    ${arg_browser}
    Open Browser    ${arg_url}    ${arg_browser}
    Maximize Browser Window
    ${title}=    Get Title
    [Return]    ${title}