*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
${url_2}    https://www.google.com/

*** Test Cases ***
FrameSwitchingAndUrl
    Open Browser    ${url}    ${browser}
    ${loc} =     Get Location
    Log To Console    ${loc}
    Maximize Browser Window
     
    Select Frame    packageListFrame    #name or id or path
    Click Link    org.openqa.selenium
    Unselect Frame
    Sleep    2

    Select Frame    packageFrame
    Click Link    WebDriver
    Unselect Frame
    Sleep    2

    Select Frame    classFrame
    Click Link    Help
    Unselect Frame
    Sleep    2
    
    Go To    ${url_2}            # swich url/location
    ${loc_2} =    Get Location
    Log To Console    ${loc_2}
    Sleep    2

    Go Back            # back to previous url/location
    Sleep    2
    
    
    Close Browser