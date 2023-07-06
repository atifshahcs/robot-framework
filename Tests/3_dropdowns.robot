*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}     https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Handling DropDowns and Lists
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Select From List By Label    continents    Australia
    Sleep   2
    Select From List By Index    continents    6

    Close Browser