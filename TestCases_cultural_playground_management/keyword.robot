*** Variables ***
${ฺBROWSER}            chrome
${SERVER}              http://localhost/cultural_playground_management/
${EMAIL}               museum20@hotmail.com
${PASSWORD}            123456789
${EMAIL_FAIL}          testFAIL@hotmail.com
${PASSWORD_FAIL}       000000000
${SELECT_GAME}         Matching Game
${์SELECT_NOT_GAME}    -- เลือกข้อมูล --

*** Keywords ***
เปิดเว็บ Profile
    Open Browser                 ${SERVER}                                                                    ${ฺBROWSER}
    Maximize Browser Window
    Set Selenium Speed           0.5
กรอก email และ password ถูก
    Input Text                   //*[@id="email"]                                                             ${EMAIL}
    Input Password               //*[@id="password"]                                                          ${PASSWORD}
กรอก email ถูก password ผิด
    Input Text                   //*[@id="email"]                                                             ${EMAIL}
    Input Password               //*[@id="password"]                                                          ${PASSWORD_FAIL}
กรอก email ผิด password ถูก
    Input Text                   //*[@id="email"]                                                             ${EMAIL_FAIL}
    Input Password               //*[@id="password"]                                                          ${PASSWORD}
กรอก email ไม่กรอก password
    Input Text                   //*[@id="email"]                                                             ${EMAIL_FAIL}
ไม่กรอก email กรอก password
    Input Password               //*[@id="password"]                                                          ${PASSWORD}
คลิกปุ่มเข้าสู่ระบบ
    Submit Form


คลิกเมนูเพิ่มชุดข้อมูล
    Click Element                //*[@id="sidebar"]/ul/li[3]/a
    Click Element                //*[@id="menu2"]/a
เลือกเกม
    Select From List By Label    //*[@id="games"]                                                             ${SELECT_GAME}
ไม่เลือกเกม
    Select From List By Label    //*[@id="games"]                                                             ${์SELECT_NOT_GAME}
เพิ่มชุดข้อมูล 8 ข้อมูล
    : FOR  ${INDEX}  IN RANGE  1  9
    \    Click Element           xpath=(//input[@type='checkbox'])[${INDEX}]
เพิ่มชุดข้อมูลน้อยกว่า 8 ข้อมูล
    : FOR  ${INDEX}  IN RANGE  1  6
    \    Click Element           xpath=(//input[@type='checkbox'])[${INDEX}]
เพิ่มชุดข้อมูลมากกว่า 8 ข้อมูล
    : FOR  ${INDEX}  IN RANGE  1  11
    \    Click Element           xpath=(//input[@type='checkbox'])[${INDEX}]
คลิกปุ่มบันทึก
    Click Button                 //*[@id="submit_add"]



คลิกเมนูลบชุดข้อมูล
    Click Element                //*[@id="sidebar"]/ul/li[3]/a
    Click Element                //*[@id="menu3"]/a
ค้นหาชุดข้อมูลอขงเกม
    Select From List By Label    //*[@id="games"]                                                             ${SELECT_GAME}
    Click Button                 //*[@id="search_game"]
เลือกชุดข้อมูล
    Click Element                xpath=(/html/body/div/div/div/div[1]/div[3]/div[1]/div/div/div/button[1])



คลิกเมนูสร้างเกม
    Click Element                //*[@id="sidebar"]/ul/li[4]/a