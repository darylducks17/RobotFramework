*** Settings ***
Library  Selenium2Library

*** Variables ***
${REGISTER_EMAIL_INPUT} =       id=MainContent_Email
${REGISTER_PASSWORD1_INPUT} =   id=MainContent_Password
${REGISTER_PASSWORD2_INPUT} =   id=MainContent_ConfirmPassword

*** Keywords ***
Verify Page Loaded
    wait until page contains element  ${REGISTER_EMAIL_INPUT}

Fill Page and Submit
    [Arguments]  ${UserData}
    Fill Email  ${UserData.Email}
    Fill Password  ${UserData.Password}
    Fill Confirmation Password  ${UserData.Password}
    #TODO - Submit the form
    Sleep  5s

Fill Email
    [Arguments]  ${Email}
    Input Text  ${REGISTER_EMAIL_INPUT}  ${Email}

Fill Password
    [Arguments]  ${Password}
    Input Text  ${REGISTER_PASSWORD1_INPUT}  ${Password}

Fill Confirmation Password
    [Arguments]  ${Password}
    Input Text  ${REGISTER_PASSWORD2_INPUT}  ${Password}