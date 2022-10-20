
*** Variables ***
# Configuration
${BROWSER} =  edge
${ENVIRONMENT} =  prod
&{BASE_URL}  dev=https://dev.cars.com/  qa=https://qa.cars.com/  prod=https://www.cars.com/
${LOGIN_URL} =  profile/secure/login
${INVALID_CREDENTIALS_PATH_CSV} =  C:\\development\\robot-scripts\\data-driven-ext-csv\\Data\\Users.csv