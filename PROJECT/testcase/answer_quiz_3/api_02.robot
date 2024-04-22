*** Settings ***
Resource       ${CURDIR}/../../resource/import.robot


*** Test Cases ***
Get user profile but user not found
    [Tags]           api  api_02
    [Documentation]  ทดสอบ api profile กรณี ไม่พบข้อมูล
        ${status}  ${body}=  api_common.Send api get  ${api_02 ['req']}
        api_profile__function.Check response case not found  ${status}  ${body}