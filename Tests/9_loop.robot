*** Test Cases ***
ForLoop
    FOR    ${i}    IN RANGE    1    10
        Log to console    ${i}
    END

    Log To Console    "Loop 2"

ForLoopList
    @{items}    Create List    1    2    3    5    # create the list of items
    FOR    ${i}    IN    @{items}
        Log to console    ${i}
    END

ForLoopStrings
    @{namesList}    Create List    Jhon    David    Smith    Scott    # create the list of items
    FOR    ${i}    IN    @{namesList}
        Log to console    ${i}
    END

ForLoopListWithExit
    @{items}    Create List    1    2    3    5    # create the list of items
    FOR    ${i}    IN    @{items}
        Log to console    ${i}
        Exit For Loop If    ${i}==3
    END