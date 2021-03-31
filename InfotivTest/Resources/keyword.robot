*** Keywords ***
Begin Web Test
    Open browser                           about:blank   ${BROWSER}

Go to Web Page
    Load Page
    Verify Page Loaded

Load Page
    Go to                                  ${URL}

Verify Page Loaded
    ${link_text}                           Get Title
    Should Be Equal                        ${link_text}   Infotiv Car Rental

Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Login Page

Input Username
    [Arguments]    ${username}
    wait until Page contains element    id:email
    Input Text     id:email    ${username}

Input Password
    [Arguments]    ${password}
    Input Text     id:password                ${password}

Submit Credentials
    Click Element    id:login



Input Pick-up date
    [Arguments]    ${pickupp}
    wait until Page contains element    id:start
    Input Text     id:start   ${pickupp}

Input Delivery date
    [Arguments]    ${Deliverydate}
    Input Text     id:end               ${Deliverydate}

Verify your trip
    ${back}                           Get Title
    Should Be Equal                        ${back}   https://rental32.infotiv.net/webpage/html/gui/showCars.php


Submit your trip
    Click Element    id:continue

Submit your car
     wait until Page contains element      id:bookModelXpass7
     Click Button                          id:bookModelXpass7

Welcome Page Should Be Open
    Page Should Contain   Infotiv Car Rental

Input CardNummer
    [Arguments]    ${Card_Nummer}
    wait until Page contains element    id:cardNum
    Input Text     id:cardNum   ${Card_Nummer}

Input FullName
    [Arguments]    ${fullName}
    Input Text     id:fullName               ${fullName}

Input Card cvc
     [Arguments]    ${Card_cvc}
     Input Text     id:cvc              ${Card_cvc}

End Web Test
    Close Browser