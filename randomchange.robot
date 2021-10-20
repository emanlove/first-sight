*** Settings ***
Library  String

Library  SeleniumLibrary
Library  EyesLibrary

*** Test Cases ***
Check Randomly Changing Login Page 
     Open Browser  https://applitools.github.io/demo  Chrome
     Eyes Open
     Eyes Check Window  Prior to Click  Fully
     Randomly Click On 'Click Me' Button
     Eyes Check Window  After Click  Fully
     Return To Main Demo Page
     Eyes Check Window  After Return To Demo Page  Fully
     Eyes Close Async
     Close All Browsers

*** Keywords ***
Randomly Click On 'Click Me' Button
     ${randomStr}=  Generate Random String  1  [NUMBERS]
     ${randomInt}=  Convert To Integer  ${randomStr}
     Run Keyword If  ${randomInt}>=${3}  Click Link  ?diff

Return To Main Demo Page
     Go To  https://applitools.github.io/demo
