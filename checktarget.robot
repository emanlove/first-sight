*** Settings ***
Library  SeleniumLibrary
Library  EyesLibrary

*** Test Cases ***
Compare the specific Eyes Check Window versus the generic Eyes Check
     Open Browser  https://applitools.github.io/demo  Chrome
     Click Link  ?diff
     Eyes Open
     
     Eyes Check Window  Login - Check Window  Fully
     # An equivalent visual check using the generic target
     Eyes Check    Target Window  Fully  With Name  Login - Check Target
     
     # Note: The following usage of named argument `name` fails as compared
     #       to using positional argument as above.
     #Eyes Check    Target Window  Fully  With Name  name=Login - Check Target
     
     Eyes Close Async
     Close All Browsers
