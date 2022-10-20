*** Settings ***
Library  String

*** Test Cases ***
FOR Loop with Upper Bounds Range
    [Documentation]  This gives us a 0 based range
    :FOR  ${Index}  IN RANGE  5
    \  Do Something  ${Index}
    \  ${RANDOM_STRING} =  Generate Random String  ${Index}
    \  Log  ${RANDOM_STRING}

FOR Loop with Start and Finish Range
    [Documentation]  No longer a 0 based range because I provided start
    :FOR  ${Index}  IN RANGE  1  4
    \  Do Something  ${Index}
    \  ${RANDOM_STRING} =  Generate Random String  ${Index}
    \  Log  ${RANDOM_STRING}

FOR Loop with Start, Finish, and Step Range
    [Documentation]  The counter will jump by 2 each time ("step" value = 2)
    :FOR  ${Index}  IN RANGE  1  10  2
    \  Do Something  ${Index}
    \  ${RANDOM_STRING} =  Generate Random String  ${Index}
    \  Log  ${RANDOM_STRING}

FOR Loop with List
    @{ITEMS} =  Create List  Item 1  Item 2  Item 3

    :FOR  ${MyItem}  IN  @{ITEMS}
    \  Log  ${MyItem}

Exit a FOR Loop
    @{ITEMS} =  Create List  Item 1  Item 2  Item 3  Item 4

    :FOR  ${MyItem}  IN  @{ITEMS}
    \  Log  ${MyItem}
    \  Run Keyword If  "${MyItem}" == "Item 3"  Exit For Loop
    \  Log  Didn't exit yet

    Log  Now we're out of the loop

Repeat a keyword many times
    Repeat Keyword  5  A Repeatable Keyword
    Repeat Keyword  2 times  A Repeatable Keyword
    Repeat Keyword  3 s  A Repeatable Keyword

*** Keywords ***
Do Something
    [Arguments]  ${PassedIndex}
    Log  I was passed a value of ${PassedIndex}!

A Repeatable Keyword
    Log  I am being repeated!