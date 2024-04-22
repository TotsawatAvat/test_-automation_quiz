*** Settings ***
Resource       ${CURDIR}/../../resource/import.robot
Test Setup     gui_common.Open website
Test Teardown  Close Browser


*** Test Cases ***
Login username notfound
    [Tags]           gui  gui_03
    [Documentation]  ทดสอบเข้าสู่ระบบ กรณี ผู้ใช้งานผิด
        gui_login__feature.Login to website  ${gui_03 ['username']}  ${gui_03 ['password']}
        gui_login__function.Check popup user notfound