*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://manager-dev.ab.dd74.controlport.co.uk/
${BROWSER}        Chrome

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    [Teardown]    Close Browser

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    sleep   500