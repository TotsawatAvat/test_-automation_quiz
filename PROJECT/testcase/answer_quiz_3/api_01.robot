*** Settings ***
Resource       ${CURDIR}/../../resource/import.robot


*** Test Cases ***
Get user profile success
    [Tags]           api  api_01
    [Documentation]  ทดสอบ api profile กรณี สำเร็จ
        ${status}  ${body}=  api_common.Send api get  ${api_01 ['req']}
        api_profile__function.Check response case success  ${api_01 ['res']}  ${status}  ${body}