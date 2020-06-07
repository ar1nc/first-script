*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${START_URL}
${VERIFY_URL}
*** Keywords ***
Load
    go to    ${START_URL}

Verify
    wait until page contains    ${VERIFY_URL}