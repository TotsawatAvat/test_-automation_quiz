*** Variables ***
&{login__text}    popup_logout_succsss=//div[contains(., 'You logged out of the secure area!') and @id='flash' ]
...               popup_pass_error=//div[contains(., 'Your password is invalid!') and @id='flash' ]
...               popup_user_error=//div[contains(., 'Your username is invalid!') and @id='flash' ]

&{login__input}   username=//label[text()='Username']/following-sibling::input[@id='username']
...               password=//label[text()='Password']/following-sibling::input[@id='password']

&{login__button}  login=//button[@type='submit']/i[text()=' Login']


*** Keywords ***
Click login
    [Documentation]  คลิกปุ่ม 'ล็อกอิน'
        SeleniumLibrary.Click Element  ${login__button.login}

Input username
    [Arguments]      ${username}
    [Documentation]  กรอกข้อมูล 'ผู้ใช้งาน'
        SeleniumLibrary.Input Text  ${login__input.username}  ${username}

Input password
    [Arguments]      ${password}
    [Documentation]  กรอกข้อมูล 'รหัสผ่าน'
        SeleniumLibrary.Input Text  ${login__input.password}  ${password}

Check popup logout success
    [Documentation]  เช็คป๊อบอัพ 'ล็อกเอ้าท์สำเร็จ'
        SeleniumLibrary.Wait Until Element Is Visible  ${login__text.popup_logout_succsss}

Check popup pass incorrect
    [Documentation]  เช็คป๊อบอัพ 'รหัสผ่านผิด'
        SeleniumLibrary.Wait Until Element Is Visible  ${login__text.popup_pass_error}

Check popup user notfound
    [Documentation]  เช็คป๊อบอัพ 'ผู้ใช้งานผิด'
        SeleniumLibrary.Wait Until Element Is Visible  ${login__text.popup_user_error}