*** Settings ***
Documentation  Demonstrate a need for data-driven testing
Resource  ../Data/InputData.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/CarsApp.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -d results tests/Cars.robot

*** Variables ***

*** Test Cases ***
Invalid login scenarios should display correct error messages
    [Template]  Test Multiple Login Scenarios
    ${UNREGISTERED_USER}
    ${INVALID_PASSWORD_USER}
    ${BLANK_CREDENTIALS_USER}

My Test
    [Template]  My Test Template
    One     Two     Three       Four
    Five    Six     Seven       Eight

*** Keywords ***
My Test Template
    [Arguments]  ${ValueOne}  ${ValueTwo}  ${ValueThree}  ${ValueFour}
    Log  ${ValueOne}
    Log  ${ValueTwo}
    # etc...