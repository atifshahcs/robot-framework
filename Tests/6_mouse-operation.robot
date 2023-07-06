*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MouseActions
    # Right click or open context menu
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/3.x/demo.html    chrome
    Maximize Browser Window
    Open Context Menu    xpath:(//span[@class='context-menu-one btn btn-neutral'])[1]
    sleep    3

    # double click
    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath:(//button[normalize-space()='Copy Text'])[1]
    sleep    3

    # drag and drop
    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    id:box4    id:box104
    sleep    3

    Close Browser