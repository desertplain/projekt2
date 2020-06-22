*** Settings ***

Resource     ${CURDIR}${/}..${/}resources${/}keywords.robot


*** Test Cases ***

#  Wykonanie próby rejestracji nowego użytkownika w serwisie.
#   Sprawdzenie reakcji strony na wprowadzenie niepoprawnego adresu
#   konta email : brak @ w adresie. Testowaną stroną jest strona demo
#   przygotowana dla testerów w celu doskonalenia umiejętności testerskich.

Rejestracja na PhPtravels przy urzyciu zlego emaila
    Odpalenie przegladarki
    Wejscie na strone
    Rejestracja   ${FirstName}   ${LastName}   ${PhoneNumber}   ${Wrong_Email}
    ...  ${Password}    ${ConfirmPassword}
    Sprawdzenie odpowiedzi strony rejestracji     ${WarningNoticeAboutEmail}
    Wylogowanie
