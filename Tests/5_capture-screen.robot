*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
${url_2}    https://www.google.com/


*** Test Cases ***
CaptureScreenAndElement
    Open Browser    ${url_2}       ${browser}

    Capture Element Screenshot    xpath://img[@alt='Google']
    Capture Page Screenshot        Results/screenshot.png 

    Close Browser