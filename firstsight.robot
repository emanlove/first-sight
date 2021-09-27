*** Settings ***
Library  SeleniumLibrary
Library  EyesLibrary

*** Test Cases ***
Check the Login page 
     Open Browser  https://applitools.github.io/demo  Chrome
     Click Link  ?diff
     Eyes Open
     #Eyes Check Window    Fully
     Eyes Check Window  DemoApp Login  Fully
     #Eyes Check  Target Window  Fully
     Eyes Close Async
     Close All Browsers
