*** Settings ***
Resource       ${CURDIR}/../../resource/import.robot


*** Test Cases ***
Test case 601
    [Tags]           601
    [Documentation]  ทดสอบ simple cipher
        ${result}=  simple_cipher.convert_simple_cipher  ${case_601 ['encrypted']}  ${case_601 ['k']}
        Log  ${result}