*** Settings ***
Library  SeleniumLibrary
Library  EyesLibrary

*** Variables ***
${clickDiffLink}=  ${False}

*** Test Cases ***
Compare The Random Number Sentence
    Open Browser  https://applitools.github.io/demo  Chrome
    Eyes Open
    Run Keyword If    ${clickDiffLink}    Click Link  ?diff

    # Visual Check the random number string
    Eyes Check Region By Selector    xpath://span[@class='primary']/..  With Name  Random Number Sentence

    # Check page ignoring the random number string
    Eyes Check    Target Window  Fully  With Name  Login Page Ignoring Random Number Sentence
    ...  Ignore Region By Selector    xpath://span[@class='primary']/..

    # Check page ignoring all but the diff link
    Eyes Check    Target Window  Fully  With Name  Login Page Ignoring All But Diff Link
    ...  Ignore Region By Selector    xpath://span[@class='primary']/..
    ...  Ignore Region By Selector    css:div.section:first-child
    ...  Ignore Region By Selector    css:div.button-section
    
     Eyes Close Async
     Close All Browsers