*** Keywords ***
Check response case success
    [Arguments]      ${req_data}  ${res_status}  ${res_body}
    [Documentation]  เช็ค response กรณี สำเร็จ
        FOR  ${parameter}  IN  @{req_data.keys()}
                IF       '${parameter}' == 'status'
                            BuiltIn.Should Be Equal As Integers  ${req_data ['${parameter}']}  ${res_status}
                ELSE IF  '${parameter}' == 'id'
                            BuiltIn.Should Be Equal As Integers  ${req_data ['${parameter}']}  ${res_body ['data'] ['id']}
                ELSE IF  '${parameter}' == 'email'
                            BuiltIn.Should Be Equal As Strings  ${req_data ['${parameter}']}  ${res_body ['data'] ['email']}
                ELSE IF  '${parameter}' == 'first_name'
                            BuiltIn.Should Be Equal As Strings  ${req_data ['${parameter}']}  ${res_body ['data'] ['first_name']}
                ELSE IF  '${parameter}' == 'last_name'
                            BuiltIn.Should Be Equal As Strings  ${req_data ['${parameter}']}  ${res_body ['data'] ['last_name']}
                ELSE IF  '${parameter}' == 'avatar'
                            BuiltIn.Should Be Equal As Strings  ${req_data ['${parameter}']}  ${res_body ['data'] ['avatar']}
                END
        END

Check response case not found
    [Arguments]      ${res_status}  ${res_body}
    [Documentation]  เช็ค response กรณี ไม่พบข้อมูล
        BuiltIn.Should Be Equal As Strings  ${res_status}  404
        ${empty_dict}=  BuiltIn.Create Dictionary
        BuiltIn.Should Be Equal  ${res_body}  ${empty_dict}