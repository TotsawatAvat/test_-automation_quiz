*** Settings ***
Resource       ${CURDIR}/../../resource/import.robot
Test Setup     gui_common.Open website
Test Teardown  Close Browser


*** Test Cases ***
Login success
    [Tags]           gui  gui_01
    [Documentation]  ทดสอบเข้าสู่ระบบ กรณี สำเร็จ
        gui_login__feature.Login to website  ${gui_01 ['username']}  ${gui_01 ['password']}
        gui_main__function.Check popup login success
        gui_main__function.Click logout
        gui_login__function.Check popup logout success