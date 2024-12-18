*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://teams.microsoft.com/
${BROWSER}        chrome
${USERNAME}       sahanahc979@gmail.com
${PASSWORD}       5ahana@2002

*** Test Cases ***
TC1:Sign In to Microsoft Teams
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//*[@id='i0116']    10s
    Input Text      xpath=//*[@id='i0116']    ${USERNAME}
    Click Button    id=idSIButton9
    Wait Until Element Is Visible    xpath=//*[@id='i0118']    10s
    Input Text      xpath=//*[@id='i0118']    ${PASSWORD}
    Click Button    id=idSIButton9
    sleep     2s
    Click Button    id=acceptButton
    [Teardown]    Close Browser
