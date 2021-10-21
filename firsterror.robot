*** Settings ***
Library  SeleniumLibrary
Library  EyesLibrary

*** Test Cases ***
Check The Main Demo Page 
     Open Browser  https://applitools.github.io/demo  Chrome
     Click Link  ?diff
     Eyes Open
     Eyes Check Window  DemoApp Main Page  Fully
     Eyes Close Async
     Close All Browsers
