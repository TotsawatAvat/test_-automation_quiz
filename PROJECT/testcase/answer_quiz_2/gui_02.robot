*** Settings ***
Resource       ${CURDIR}/../../resource/import.robot
Test Setup     gui_common.Open website
Test Teardown  Close Browser


*** Test Cases ***
Login password incorrect
    [Tags]           gui  gui_02
    [Documentation]  ทดสอบเข้าสู่ระบบ กรณี รหัสผ่านผิด
        gui_login__feature.Login to website  ${gui_02 ['username']}  ${gui_02 ['password']}
        gui_login__function.Check popup pass incorrect