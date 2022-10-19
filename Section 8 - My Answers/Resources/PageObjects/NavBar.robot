*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOP NAV ABOUT LINK}    xpath: //*[@id="block-1602256221872"]/div/a[1]

*** Keywords ***
Click About Header
    Click Element    ${TOP NAV ABOUT LINK}