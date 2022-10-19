*** Settings ***
Documentation    Suite to test whether user can access the '   About Us' page
Resource    ../Resources/FrontOfficeApp.robot
Resource    ../Resources/Common.robot

Test Setup    Begin Web Test
Test Teardown    End Web Test


*** Variables ***


*** Test Cases ***
User Should Be Able To Access "About" Page
    [Documentation]    Test 1
    FrontOfficeApp.Go To Landing Page
    FrontOfficeApp.Go To "About" Page

"About" Page Should Match Requirements
    [Documentation]    Test 2
    FrontOfficeApp.Go To Landing Page
    FrontOfficeApp.Go To "About" Page
    FrontOfficeApp.Validate "About" Page





    