*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ScrollingTest
    Open Browser    https://www.nationsonline.org/oneworld/countries_of_the_world.htm    chrome
    Maximize Browser Window
    
    Scroll Element Into View    xpath://a[normalize-space()='Pakistan']    # to scroll till a specific element
    sleep    2
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)    # to scroll till end of the page
    sleep    2
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)    # to scroll back start of the page, only put -
    sleep    2