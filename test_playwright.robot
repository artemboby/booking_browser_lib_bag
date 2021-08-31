*** Settings ***
Library           Browser

*** Variables ***
${LOGIN URL}      https://manager-dev.ab.dd74.controlport.co.uk/
${BROWSER}        chromium

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    [Teardown]    Close Browser

*** Keywords ***
Open Browser To Login Page
    New Browser  ${BROWSER}  headless=False
    New Context
    New Page  ${LOGIN URL}
    sleep   500