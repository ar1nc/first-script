*** Settings ***
Resource    ./PO/HomePage.robot
Resource    ./PO/TopNav.robot
Resource    ./PO/SearchResults.robot
Resource    ./PO/ProductPage.robot
Resource    ./PO/LoginPage.robot

*** Variables ***

*** Keywords ***
Load Website
    HomePage.Load
    HomePage.Verify

Search for Product
    TopNav.Enter Text
    TopNav.Click To Search
    SearchResults.Verify
    SearchResults.Select Product

Add to Cart
    ProductPage.Add to Cart
    ProductPage.Continue Add-on

Product Checkout
    ProductPage.Proceed to Checkout

User has to login
    LoginPage.Verify Prompt

