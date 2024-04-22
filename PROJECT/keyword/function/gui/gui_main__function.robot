*** Variables ***
&{home__text}    popup_login_succsss=//div[contains(., 'You logged into a secure area!') and @id='flash' ]

&{home__button}  logout=//div[@id='content']//i[text()=' Logout']


*** Keywords ***
Click logout
    [Documentation]  คลิกปุ่ม 'ล็อกเอ้าท์'
        SeleniumLibrary.Click Element  ${home__button.logout}

Check popup login success
    [Documentation]  เช็คป๊อบอัพ 'ล็อกอินสำเร็จ'
        SeleniumLibrary.Wait Until Element Is Visible  ${home__text.popup_login_succsss}