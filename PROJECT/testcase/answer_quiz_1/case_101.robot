*** Settings ***
Resource       ${CURDIR}/../../resource/import.robot


*** Test Cases ***
Test case 101
    [Tags]           101
    [Documentation]  ทดสอบ duplicates list
        ${list_new}=  basic_common.Create duplicates list  ${case_101 ['list_1']}  ${case_101 ['list_2']}
        Log  ${list_new}