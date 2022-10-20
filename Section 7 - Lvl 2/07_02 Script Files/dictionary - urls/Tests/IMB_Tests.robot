*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/ImbApp.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# pybot -d results -i landing tests/IMB_Tests.robot

*** Variables ***
${ENVIRONMENT} =  dev
${BROWSER} =  ie
&{URL}  dev=http://dev.internetmillionaireblueprint.com  qa=http://qa.internetmillionaireblueprint.com  stage=http://stage.internetmillionaireblueprint.com  prod=http://www.amazon.com
&{CUSTOMER_USER}  FirstName=Bryan  LastName=Lamb  Dob=1/1/1900  Email=bryan@robotframework.com  Password=MyPassword!
&{ADMIN_USER}  FirstName=Joe  LastName=Smith  Dob=1/1/1900  Email=admin@robotframework.com  Password=AdminPassword!

*** Test Cases ***
Should be able to view landing page
    [Tags]  landing
    ImbApp.Navigate to Landing Page
    Sleep  5s

Should be able to register for new account
    [Tags]  register
    ImbApp.Navigate to Landing Page
    Sleep  5s
    ImbApp.Create New Account  ${CUSTOMER_USER}
