*** Keywords ***
Login to website
    [Arguments]  ${username}  ${password}
        gui_login__function.Input username  ${username}
        gui_login__function.Input password  ${password}
        gui_login__function.Click login