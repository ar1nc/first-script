*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Keywords ***
Verify Item
    wait until page contains    xpath=//*[@id="productTitle"]

Add to Cart
    Click button     id="add-to-cart-button"

Continue Add-on
    Click button     xpath=//*[@id="a-autoid-72"]/span/input

Proceed to Checkout
    wait until page contains      id="huc-v2-order-row-items-msg"
    click button        id="hlb-ptc-btn-native"