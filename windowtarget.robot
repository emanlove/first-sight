*** Settings ***
Library  SeleniumLibrary
Library  EyesLibrary

*** Variables ***
${useCheckWindow}=  ${True}

*** Test Cases ***
Compare Eyes Check Window versus Eyes Check
     Open Browser  https://applitools.github.io/demo  Chrome
     Eyes Open

     IF  ${useCheckWindow}
        Log To Console    \n.. using `Eyes Check Window`     
        Eyes Check Window  Login - Check Window  Fully
     ELSE
        Log To Console    \n.. using `Eyes Check .. Target`     
        # An equivalent visual check using the generic target
        Eyes Check    Target Window  Fully  With Name  Login - Check Target
     END

     Eyes Close Async
     Close All Browsers
