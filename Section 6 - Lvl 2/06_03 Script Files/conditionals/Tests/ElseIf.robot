
*** Variables ***
${MY_VALUE} =  100

*** Test Cases ***
Testing a true IF statement
    Run Keyword If  ${MY_VALUE} > 50  Keyword 1

Testing a false IF statement
    Run Keyword If  ${MY_VALUE} > 200  Keyword 1

Testing an IF/ELSE statement
    Run Keyword If  ${MY_VALUE} > 200  Keyword 1
    ...  ELSE  Keyword 2

Testing an IF/ElSE IF/ELSE statement
    Run Keyword If  ${MY_VALUE} > 200  Keyword 1
    ...  ELSE IF  ${MY_VALUE} == 10  Keyword 2
    ...  ELSE  Keyword 3


*** Keywords ***
Keyword 1
    Log  In keyword 1

Keyword 2
    Log  In keyword 2

Keyword 3
    Log  In keyword 3