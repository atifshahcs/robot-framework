*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    Open Browser    ${url}
    Maximize Browser Window
    Set Selenium Speed    1 second
    # select radiobutton
    Select Radio Button    sex    Female
    Select Radio Button    exp    5
    #Sleep    2s
    # select Checkbox
    Select Checkbox    Manual Tester
    Select Checkbox    Automation Tester
    
    Unselect Checkbox    Manual Tester
    
    Close Browser