*** Settings ***
Documentation  This is my end to end suite
Resource  ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource  ../../Resources/BackOffice/BackOfficeApp.robot
Resource  ../../Resources/Common/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/EndToEnd/End_to_End.robot

*** Variables ***
${BROWSER} =  ff
${FRONT_OFFICE_URL} =  http://www.robotframeworktutorial.com/front-office
${BACK_OFFICE_URL} =  http://www.robotframeworktutorial.com/back-office

*** Test Cases ***
Should be able to access both sites
    [Documentation]  This is test 1
    [Tags]  test1
    FrontOfficeApp.Go to Landing Page
    BackOfficeApp.Go to Landing Page


