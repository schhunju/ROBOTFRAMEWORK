*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
Google Test
    Open Browser    https://www.google.com/    chrome
    Input Text    name=q    Google   
    Press Keys    name=q    ENTER