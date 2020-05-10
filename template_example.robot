*** Test Cases ***
Template with embedded arguments
    [Template]    The result of ${value1} and ${value2} should be ${expected}
    1    1    2
    1    2    3

*** Keywords ***
The result of ${value1} and ${value2} should be ${expected}
    ${result} =    Calculate    ${value1}    ${value2}
    ${expected} =    Convert to Integer    ${expected}
    Should Be Equal    ${result}    ${expected}

Calculate
    [Arguments]    ${a}    ${b}
    ${sum}    Evaluate    ${a}+${b}
    [Return]    ${sum}
