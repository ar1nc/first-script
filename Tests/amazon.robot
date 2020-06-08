*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Amazonweb.robot
Test Setup      Begin Web Test
Test Teardown    End Web Test
*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://www.amazon.com
${VERIFY_URL} =  amazon.com
${SEARCH_TEXT} =  kindle
${SELECTED_PRODUCT} =   Fire 7 Tablet (7" display, 16 GB) - Black
*** Test Cases ***
User navigates to Amazon.com
    [Documentation]    First
    [Tags]    Smoke
    Amazonweb.Load Website

User needs to login to Checkout
    [Documentation]    Second
    [Tags]   Current
    Amazonweb.Load Website
    Amazonweb.Search for Product
    Amazonweb.Add to Cart
    Amazonweb.Product Checkout
    Amazonweb.User has to login

Feature-1 Test
    Log   Available on Feature-1 only