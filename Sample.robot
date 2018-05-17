*** Settings ***
Library           SeleniumLibrary
Library           DateTime
Library           XML

*** Test Cases ***
Open Narra
    Open Browser To Google

Tap Homepage
    Homepage

*** Keywords ***
Open Browser To Google
    Open Browser    http://www.google.com    chrome
    Set Window Size    400    575
    Go To    http://m.narra-demo.inplaymatrix.com/
    Comment    ${text}=    Get Text    //div[@class='tab_nav_item active'][contains(.,' 熱門賽事')]
    Comment    Log To Console    ${text}

Homepage
    Click Element    //*[@id="footer_menu_sports"]/div[2]
