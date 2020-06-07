*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${SEARCH_TEXT}
${SELECTED_PRODUCT}
*** Keywords ***
Verify
    wait until page contains    results for "${SEARCH_TEXT}"

Select Product
    click image    ${SELECTED_PRODUCT}