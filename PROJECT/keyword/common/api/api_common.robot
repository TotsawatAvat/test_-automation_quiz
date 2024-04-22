*** Keywords ***
Send api get
    [Arguments]      ${request}
    [Documentation]  ยิง api method get
        RequestsLibrary.Create Session  mysession  ${request ['ip']}  disable_warnings=1
        ${response}=  RequestsLibrary.GET On Session  mysession  ${request ['path']}  expected_status=any

        ${response_status}=  BuiltIn.Set Variable  ${response.status_code}
        ${response_body}=    BuiltIn.Set Variable  ${response.json()}

    RETURN  ${response_status}  ${response_body}