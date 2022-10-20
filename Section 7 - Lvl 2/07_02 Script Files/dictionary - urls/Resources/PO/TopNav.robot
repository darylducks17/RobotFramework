*** Settings ***
Library  Selenium2Library

*** Variables ***
${TOPNAV_REGISTER_LINK} =  Register
${TOPNAV_LOGIN_LINK} =  Log in

*** Keywords ***
Verify Page Loaded
    element text should be  ${TOPNAV_HEADING}  Register.

Click Registration Link
    Click Link  ${TOPNAV_REGISTER_LINK}

Click Login Link
    Click Link  ${TOPNAV_LOGIN_LINK}