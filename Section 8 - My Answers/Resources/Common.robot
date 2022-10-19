*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Edge 

*** Keywords ***
Begin Web Test
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window

End Web Test
    Close All Browsers

Speed 
    Set Selenium Speed    2


    