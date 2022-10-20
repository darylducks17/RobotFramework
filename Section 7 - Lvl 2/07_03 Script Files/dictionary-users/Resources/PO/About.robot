*** Settings ***
Library  Selenium2Library

*** Variables ***
${REGISTER_HEADING} =           xpath=//h4
${REGISTER_EMAIL_INPUT} =       id=MainContent_Email
${REGISTER_PASSWORD1_INPUT} =   id=MainContent_Password
${REGISTER_PASSWORD2_INPUT} =   id=MainContent_ConfirmPassword

*** Keywords ***
Verify Page Loaded
    Element Text Should Be  ${REGISTER_HEADING}  Create a new account

Fill Page and Submit
    [Arguments]  ${Email}  ${Password}
    Fill Email  ${Email}
    Fill Password  ${Password}
    Fill Confirm Password  ${Password}
    #TODO - Submit the form
    Sleep  5s

Fill Email
    [Arguments]  ${Email}
    Input Text  ${REGISTER_EMAIL_INPUT}  ${Email}

Fill Password
    [Arguments]  ${Password}
    Input Text  ${REGISTER_PASSWORD1_INPUT}  ${Password}

Fill Confirm Password
    [Arguments]  ${Password}
    Input Text  ${REGISTER_PASSWORD2_INPUT}  ${Password}