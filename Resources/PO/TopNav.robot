*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${SEARCH_TEXT}
*** Keywords ***
Enter Text
    Input text    twotabsearchtextbox    ${SEARCH_TEXT}

Click To Search
    click button    xpath=//*[@id="nav-search"]/form/div[2]/div/input