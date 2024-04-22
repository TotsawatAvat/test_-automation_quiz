*** Variables ***
${url}  http://the-internet.herokuapp.com/login


*** Keywords ***
Open website
    SeleniumLibrary.Open Browser  ${url}  chrome
    SeleniumLibrary.Maximize Browser Window