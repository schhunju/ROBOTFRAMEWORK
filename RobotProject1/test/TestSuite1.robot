*** Settings ***
Library    SeleniumLibrary   
Suite Setup    Log    Inside Suite Setup
Suite Teardown    Log    inside suite teardown
Test Setup    Log    Inside test setup    
Test Teardown    Log    Test Teardown     


*** Test Cases ***
MyFirstTest
    Log    Hello World..   
    
# FirstSeleniumTest
    # Open Browser     https://belly-monk.itglance.org/login/    chrome
    # Maximize Browser Window
    # Set Browser Implicit Wait    15
    # Input Text    id=user_login    chhunjus@gmail.com 
    # Input Password    id=user_pass    Nh98goalie!     
    # # Press Keys    name=q    ENTER
    # Click Button    name=submit     
    # Input Text    id=user_login    chhunjus@gmail.com 
    # Input Password    id=user_pass    Nh98goalie!     
    # # Press Keys    name=q    ENTER
    # Click Button    name=submit     
    # Sleep    2    
    # Close Browser
    # Log    Test Completed
    

SampleLoginTest
    [Documentation]    This is a sample Login test.
    Open Browser    ${url}    chrome
    Set Browser Implicit Wait    15
    LoginKW   
    Click Button    id=btnLogin  
    Log    Login completed 
    Sleep    2      
    Click Element    id=welcome    
    # Click Element    xpath=//*[@id="welcome-menu"]/ul/li[2]/a      
    Click Element    css=#welcome-menu > ul > li:nth-child(2) > a    
    Log    LogOut Succesful.    
    

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/
@{credentials}    Admin    admin123
&{loginData}    username=Admin    password=admin123
    

*** Keywords ***
LoginKW
    Input Text    id=txtUsername    ${credentials}[0]
    Input Password    id=txtPassword    ${loginData}[password]
    