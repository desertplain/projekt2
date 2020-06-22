*** Settings ***

Library   SeleniumLibrary
Resource       vars.robot


Documentation   This is a keywords file.

*** Keywords ***
Odpalenie przegladarki
    Open Browser      about:blank    ${browser}
    Maximize Browser Window


Wejscie na strone
    Go To   ${website}

Rejestracja
    [Arguments]     ${key_imie}  ${key_nazwisko}  ${key_phone}  ${key_email}
    ...  ${key_passs}  ${key_passs_again}
    Sleep   1s
    Click Element   ${selector_MY_ACCOUNT}
    Sleep   1s
    Click Element   ${selector_Sign_Up}
    Input Text      ${selector_First_Name}   ${key_imie}
    Input Text      ${selector_Last_Name}    ${key_nazwisko}
    Input Text      ${selector_Phone}        ${key_phone}
    Input Text      ${selector_Email}        ${key_email}
    Input Text      ${selector_Password}     ${key_passs}
    Input Text      ${selector_Confirm_Password}   ${key_passs_again}
    Click Element   ${selector_Green_Sign_Up}
    Sleep  5s

Sprawdzenie odpowiedzi strony rejestracji
    [Arguments]    ${sprawdzamy}
    Page Should Contain     ${sprawdzamy}


Wylogowanie
    Capture Page Screenshot
    Close All Browsers
