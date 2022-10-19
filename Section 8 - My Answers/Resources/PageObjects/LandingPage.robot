*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.robotframeworktutorial.com/
${VERIFY LANDING PAGE LOADED}    xpath://*[@id="block-1606257794354_0"]/div/h3/strong

*** Keywords ***
Navigate To 
    Go To    ${URL}

Verify Webpage Loaded
    Wait Until Page Contains Element    ${VERIFY LANDING PAGE LOADED}
    