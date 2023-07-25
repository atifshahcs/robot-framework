*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    Open Browser    https://www.nationsonline.org/oneworld/countries_of_the_world.htm    chrome
    Maximize Browser Window

    ${num_of_links} =    Get Element Count    xpath://a    #capture all links
    Log To Console    ${num_of_links}

  
    FOR  ${i}    IN RANGE    1    ${num_of_links}
        ${link_text}=    Get Text    xpath:(//a)[${i}]    #Print the text of all the links
        Log To Console    ${link_text}
    END
    