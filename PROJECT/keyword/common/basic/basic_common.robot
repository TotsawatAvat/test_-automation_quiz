*** Keywords ***
Create duplicates list
    [Arguments]      ${list_1}  ${list_2}
    [Documentation]  สร้าง list ที่มีข้อมูลตรงกัน
        @{list_new}=  BuiltIn.Create List
        FOR  ${item1}  IN  @{list_1}
                FOR  ${item2}  IN  @{list_2}
                        IF  '${item1}' == '${item2}'
                                ${status}=  BuiltIn.Run Keyword And Return Status  Collections.List Should Contain Value  ${list_new}  ${item2}
                                IF  '${status}' != 'True'
                                        Collections.Append To List  ${list_new}  ${item2}
                                END
                        END
                END
        END
    RETURN  ${list_new}