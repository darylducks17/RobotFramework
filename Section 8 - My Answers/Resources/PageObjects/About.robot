*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ABOUT HEADER TITLE}    About 

*** Keywords ***
Verify Webpage Loaded
    Wait Until Page Contains    ${ABOUT HEADER TITLE}

Validate Page
   Title Should Be    ${ABOUT HEADER TITLE}    About Us
    